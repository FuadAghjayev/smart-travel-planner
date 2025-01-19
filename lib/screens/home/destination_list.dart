import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

import '../../models/destination_model.dart';
import '../../services/destination_services.dart';

class DestinationsList extends StatefulWidget {
  final MapController mapController;
  final List<LatLng> selectedDestinations;
  final Function(LatLng) onDestinationSelected;
  final List<Destination>? initialDestinations;

  const DestinationsList({
    super.key,
    required this.mapController,
    required this.selectedDestinations,
    required this.onDestinationSelected,
    this.initialDestinations,
  });

  @override
  State<DestinationsList> createState() => _DestinationsListState();
}

class _DestinationsListState extends State<DestinationsList> {
  List<Destination> destinations = [];
  bool isLoading = true;
  String? error;
  Position? currentPosition;

  @override
  void initState() {
    super.initState();
    if (widget.initialDestinations != null) {
      setState(() {
        destinations = widget.initialDestinations!;
        isLoading = false;
      });
    } else {
      _getCurrentLocationAndPlaces();
    }
  }

  Future<void> _getCurrentLocationAndPlaces() async {
    try {
      setState(() {
        isLoading = true;
        error = null;
      });

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw Exception('Location services are disabled.');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Location permission is denied.');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw Exception('Location permissions are permanently denied, we cannot request permissions.');
      }


      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        ),
      ).listen((Position position) {
        if (mounted && widget.initialDestinations == null) {
          _fetchNearbyPlaces(position);
        }
      });

      if (mounted && widget.initialDestinations == null) {
        _fetchNearbyPlaces(position);
      }

    } catch (e) {
      if (mounted) {
        setState(() {
          error = e.toString();
          isLoading = false;
        });
      }
    }
  }

  Future<void> _fetchNearbyPlaces(Position position) async {
    try {
      setState(() {
        currentPosition = position;
      });

      final places = await DestinationService.fetchNearbyPlaces(
        position.latitude,
        position.longitude,
        1000, // 1 km radius
      );

      if (mounted) {
        setState(() {
          destinations = places;
          isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          error = e.toString();
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (destinations.isEmpty) {
      return const Center(
        child: Text('No places found nearby'),
      );
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        final destination = destinations[index];
        final location = LatLng(destination.latitude, destination.longitude);
        final isSelected = widget.selectedDestinations.contains(location);

        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: GestureDetector(
            onTap: () {
              widget.mapController.move(location, 15.0);
            },
            child: Stack(
              children: [
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: isSelected
                        ? Border.all(color: Colors.blue, width: 2)
                        : null,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    destination.name,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isSelected
                                        ? Icons.check_circle
                                        : Icons.add_circle_outline,
                                    color: isSelected ? Colors.blue : Colors.grey,
                                  ),
                                  onPressed: () => widget.onDestinationSelected(location),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.location_on, size: 16, color: Colors.grey),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    destination.distance,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 16, color: Colors.amber),
                                const SizedBox(width: 4),
                                Text(
                                  '${destination.rating}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Icon(Icons.circle, size: 8, color: Colors.grey.shade300),
                                const SizedBox(width: 8),
                                Text(
                                  destination.description.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Stop ${widget.selectedDestinations.indexOf(location) + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}