import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../common/custom_app_bar.dart';
import '../../constants/location/location_permissons.dart';
import '../../features/map/map_integration.dart';
import '../../models/destination_model.dart';
import '../../routes/app_router.dart';
import '../../services/destination_services.dart';
import '../itinerary/bloc/itinerary_bloc.dart';
import 'bloc/trip_planner_bloc.dart';
import 'bloc/trip_planner_event.dart';
import 'bloc/trip_planner_state.dart';

class TripPlannerPage extends StatelessWidget {
  final List<LatLng> selectedDestinations;
  final List<Destination> destinations;

  const TripPlannerPage({
    super.key,
    required this.selectedDestinations,
    required this.destinations,
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
      child: TripPlannerView(destinations: destinations,),
    );
  }
}

class TripPlannerView extends StatefulWidget {
  final List<Destination> destinations;
  const TripPlannerView({super.key, required this.destinations});

  @override
  State<TripPlannerView> createState() => _TripPlannerViewState();
}

class _TripPlannerViewState extends State<TripPlannerView> {
  late final MapController mapController;
  bool isSelectingDestination = false;
  Position? currentUserPosition;


  void _saveToItinerary() {
    final now = DateTime.now();
    for (var i = 0; i < widget.destinations.length; i++) {
      final destination = widget.destinations[i];

      context.read<ItineraryBloc>().add(
        ItineraryEvent.addRequested(
          destination: destination.name,
          activity: 'Visit',
          date: now,
          time: '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}',
        ),
      );
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Route saved to itinerary successfully!')),
    );

    AppRouter.pushItinerary(context);
  }
  @override
  void initState() {
    super.initState();
    mapController = MapController();
    _setupLocationAndMap();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  void _setupLocationAndMap() async {
    final hasPermission = await LocationPermissionHandler.handlePermission(context);
    if (!hasPermission) return;

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        currentUserPosition = position;
      });

      final currentLatLng = LatLng(position.latitude, position.longitude);
      mapController.move(currentLatLng, 13.0);
      _loadNearbyPlaces(currentLatLng);

    } catch (e) {
      _showErrorSnackBar('Location error: $e');
    }
  }

  void _loadNearbyPlaces(LatLng location) {
    context.read<TripPlannerBloc>().add(
      TripPlannerEvent.loadNearbyPlaces(
        location: location,
        radius: 500,
      ),
    );
  }

  void _onMapTap(LatLng point) {
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

  void _showErrorSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripPlannerBloc, TripPlannerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: 'Route Planner',
            showBackButton: false,
            actions: [
              IconButton(
                icon: Icon(
                  isSelectingDestination ? Icons.close : Icons.add_location,
                  color: Colors.teal,
                ),
                onPressed: () {
                  setState(() {
                    isSelectingDestination = !isSelectingDestination;
                  });
                },
                tooltip: 'Add Destination',
              ),
              IconButton(
                icon: const Icon(Icons.clear, color: Colors.teal),
                onPressed: () {
                  context.read<TripPlannerBloc>().add(
                    const TripPlannerEvent.clearRoute(),
                  );
                },
                tooltip: 'Clear Route',
              ),
              if (state.hasRoutePoints)
                IconButton(
                  icon: const Icon(Icons.save, color: Colors.teal),
                  onPressed: _saveToItinerary,
                  tooltip: 'Save to Itinerary',
                ),
            ],
          ),
          body: Stack(
            children: [
              MapIntegration(
                mapController: mapController,
                onLocationSelected: _onMapTap,
                selectedLocations: state.routePoints,
                currentPosition: currentUserPosition,
                showCircle: true,
                showPolyline: true,
                nearbyPlaces: state.nearbyPlaces,
              ),
              if (state.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              _buildRouteInfo(state),
              if (isSelectingDestination)
                _buildSelectionOverlay(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRouteInfo(TripPlannerState state) {
    if (!state.hasRoutePoints) return const SizedBox.shrink();

    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Distance: ${state.calculateTotalDistance().toStringAsFixed(1)} km',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Points: ${state.routePointsCount}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
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
          'Tap to add destination',
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

}