import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../common/custom_app_bar.dart';
import '../../models/place.dart';
import '../../services/destination_services.dart';
import 'bloc/trip_planner_bloc.dart';
import 'bloc/trip_planner_event.dart';
import 'bloc/trip_planner_state.dart';

class TripPlannerPage extends StatelessWidget {
  final List<LatLng> selectedDestinations;

  const TripPlannerPage({
    super.key,
    required this.selectedDestinations,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = TripPlannerBloc(
          destinationService: DestinationService(),
        );
        bloc.initializeWithDestinations(selectedDestinations);
        return bloc;
      },
      child: const TripPlannerView(),
    );
  }
}

class TripPlannerView extends StatefulWidget {
  const TripPlannerView({super.key});

  @override
  State<TripPlannerView> createState() => _TripPlannerViewState();
}

class _TripPlannerViewState extends State<TripPlannerView> {
  late final MapController mapController;
  bool isSelectingDestination = false;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeMap();
    });
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  void _initializeMap() {
    final state = context.read<TripPlannerBloc>().state;
    if (state.routePoints.isNotEmpty) {
      mapController.move(state.routePoints.first, 13.0);
    } else {
      _getCurrentLocation();
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      mapController.move(
        LatLng(position.latitude, position.longitude),
        13.0,
      );
      _loadNearbyPlaces(LatLng(position.latitude, position.longitude));
    } catch (e) {
      debugPrint('Error getting location: $e');
      _showErrorSnackBar('Could not get current location');
    }
  }

  void _loadNearbyPlaces(LatLng location) {
    context.read<TripPlannerBloc>().add(
      TripPlannerEvent.loadNearbyPlaces(
        location: location,
        radius: 5000,
      //  categories: ['restaurant', 'tourist_attraction', 'hotel'],
      ),
    );
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _onMapTap(TapPosition tapPosition, LatLng point) {
    if (isSelectingDestination) {
      context.read<TripPlannerBloc>().add(
        TripPlannerEvent.addDestination(point: point),
      );
      setState(() {
        isSelectingDestination = false;
      });
      _loadNearbyPlaces(point);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripPlannerBloc, TripPlannerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: 'Trip Planner (${state.routePointsCount} stops)',
            actions: [
              IconButton(
                icon: Icon(
                  isSelectingDestination ? Icons.close : Icons.add_location,
                ),
                onPressed: () {
                  setState(() {
                    isSelectingDestination = !isSelectingDestination;
                  });
                  if (!isSelectingDestination) {
                    _showInfoSnackBar('Tap on map to add destination');
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  context.read<TripPlannerBloc>().add(
                    const TripPlannerEvent.clearRoute(),
                  );
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  onTap: _onMapTap,
                  initialCenter: const LatLng(40.409264, 49.867092),
                  initialZoom: 13.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  PolylineLayer(
                    polylines: [
                      if (state.hasRoutePoints)
                        Polyline(
                          points: state.routePoints,
                          color: Colors.blue,
                          strokeWidth: 4.0,
                        ),
                    ],
                  ),
                  // MarkerLayer(
                  //   markers: [
                  //     ...state.routePoints.asMap().entries.map(
                  //           (entry) => _buildDestinationMarker(
                  //         entry.value,
                  //         'Stop ${entry.key + 1}',
                  //       ),
                  //     ),
                  //     ...state.nearbyPlaces.map(
                  //           (place) => _buildNearbyPlaceMarker(place),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              if (state.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              _buildTripInfoPanel(state),
              if (isSelectingDestination)
                _buildSelectionOverlay(),
            ],
          ),
        );
      },
    );
  }

  Marker _buildDestinationMarker(LatLng point, String label) {
    return Marker(
      point: point,
      width: 110,
      height: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
    );
  }

  Marker _buildNearbyPlaceMarker(Place place) {
    return Marker(
      point: LatLng(place.latitude, place.longitude),
      child: GestureDetector(
        onTap: () => _showPlaceDetails(place),
        child: Tooltip(
          message: place.name,
          child: Icon(
            _getPlaceIcon(place.category),
            color: _getPlaceColor(place.category),
            size: 30,
          ),
        ),
      ),
    );
  }

  IconData _getPlaceIcon(String category) {
    switch (category) {
      case 'restaurant':
        return Icons.restaurant;
      case 'tourist_attraction':
        return Icons.photo_camera;
      case 'hotel':
        return Icons.hotel;
      default:
        return Icons.place;
    }
  }

  Color _getPlaceColor(String category) {
    switch (category) {
      case 'restaurant':
        return Colors.orange;
      case 'tourist_attraction':
        return Colors.green;
      case 'hotel':
        return Colors.purple;
      default:
        return Colors.blue;
    }
  }

  void _showPlaceDetails(Place place) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(place.description ?? 'No description available'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<TripPlannerBloc>().add(
                  TripPlannerEvent.addDestination(
                   point:  LatLng(place.latitude, place.longitude),
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Add to Route'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripInfoPanel(TripPlannerState state) {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: Column(
        children: [
          if (state.hasRoutePoints)
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildInfoRow(
                    'Total Distance',
                    '${state.calculateTotalDistance().toStringAsFixed(1)} km',
                  ),
                  const SizedBox(height: 8),
                  _buildInfoRow(
                    'Destinations',
                    '${state.routePointsCount} stops',
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildSelectionOverlay() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black54,
        padding: const EdgeInsets.all(16),
        child: const Text(
          'Tap on the map to add a destination',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _showInfoSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}