import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../services/destionation_services.dart';
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
      // Center map on the first selected destination
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
      context.read<TripPlannerBloc>().add(
        TripPlannerEvent.loadNearbyPlaces(
          location: LatLng(position.latitude, position.longitude),
        ),
      );
    } catch (e) {
      debugPrint('Error getting location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripPlannerBloc, TripPlannerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Trip Planner (${state.routePointsCount} stops)'),
            actions: [
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
                  onTap: (_, point) {
                    if (state.routePoints.isNotEmpty) {
                      mapController.move(state.routePoints.first, 13.0);
                    } else {
                      _getCurrentLocation();
                    }
                  },
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
                  MarkerLayer(
                    markers: [
                      ...state.routePoints.asMap().entries.map(
                            (entry) => Marker(
                          point: entry.value,
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
                                  'Stop ${entry.key + 1}',
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
                        ),
                      ),
                      ...state.nearbyPlaces.map(
                            (place) => Marker(
                          point: LatLng(place.latitude, place.longitude),
                          child: Tooltip(
                            message: place.name,
                            child: const Icon(
                              Icons.place,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (state.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              Positioned(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Distance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  '${state.calculateTotalDistance().toStringAsFixed(1)} km',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Destinations',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  '${state.routePointsCount} stops',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() => isSelectingDestination = true);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tap on the map to add a destination'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      label: const Text('Add Destination'),
                      icon: const Icon(Icons.add_location),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              if (isSelectingDestination)
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: const Center(
                    child: Text(
                      'Tap anywhere on the map',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}