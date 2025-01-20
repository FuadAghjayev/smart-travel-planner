import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../common/custom_app_bar.dart';
import '../../constants/location/location_permissons.dart';
import '../../features/map/map_integration.dart';
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
  Position? currentUserPosition;
  StreamSubscription<Position>? _positionStreamSubscription;
  bool _isCalculatingDistance = false;
  double? _nearestPointDistance;
  Timer? _distanceUpdateTimer;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    _setupLocationListener();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeMap();
    });

    _distanceUpdateTimer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _updateDistanceCalculations();
    });
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    _distanceUpdateTimer?.cancel();
    mapController.dispose();
    super.dispose();
  }

  void _setupLocationListener() async {
    final hasPermission = await LocationPermissionHandler.handlePermission(context);
    if (!hasPermission) return;

    const locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    );

    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: locationSettings,
    ).listen((Position position) {
      setState(() {
        currentUserPosition = position;
      });

      final currentLatLng = LatLng(position.latitude, position.longitude);
      _loadNearbyPlaces(currentLatLng);
      _updateDistanceCalculations();

      context.read<TripPlannerBloc>().add(
        TripPlannerEvent.updateCurrentLocation(currentLatLng),
      );
    });
  }

  void _updateDistanceCalculations() {
    if (currentUserPosition == null || !mounted) return;

    setState(() {
      _isCalculatingDistance = true;
    });

    try {
      final currentLatLng = LatLng(
        currentUserPosition!.latitude,
        currentUserPosition!.longitude,
      );

      final state = context.read<TripPlannerBloc>().state;
      if (state.routePoints.isNotEmpty) {
        final distance = _findNearestRoutePointDistance(currentLatLng, state.routePoints);
        setState(() {
          _nearestPointDistance = distance;
        });
      }

      setState(() {
        _isCalculatingDistance = false;
      });
    } catch (e) {
      setState(() {
        _isCalculatingDistance = false;
        _nearestPointDistance = null;
      });
      _showErrorSnackBar('Error calculating distance: $e');
    }
  }

  double _findNearestRoutePointDistance(LatLng currentLocation, List<LatLng> routePoints) {
    if (routePoints.isEmpty) return 0;

    double minDistance = double.infinity;
    for (var point in routePoints) {
      double distance = DestinationService.calculateDistance(
        currentLocation.latitude,
        currentLocation.longitude,
        point.latitude,
        point.longitude,
      );
      if (distance < minDistance) {
        minDistance = distance;
      }
    }
    return minDistance;
  }

  void _initializeMap() async {
    final state = context.read<TripPlannerBloc>().state;
    if (state.routePoints.isNotEmpty) {
      mapController.move(state.routePoints.first, 13.0);
    } else {
      await _getCurrentLocation();
    }
  }

  Future<void> _getCurrentLocation() async {
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
      _updateDistanceCalculations();

      context.read<TripPlannerBloc>().add(
        TripPlannerEvent.updateCurrentLocation(currentLatLng),
      );

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
      _updateDistanceCalculations();
    }
  }

  void _showInfoSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
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
            title: 'Route planner (${state.routePointsCount} points)',
            showBackButton: false,
            actions: [
              IconButton(
                icon: Icon(
                  isSelectingDestination ? Icons.close : Icons.add_location,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isSelectingDestination = !isSelectingDestination;
                  });
                  if (isSelectingDestination) {
                    _showInfoSnackBar('Add destination');
                  }
                },
                tooltip: 'Add Destination',
              ),
              IconButton(
                icon: const Icon(Icons.my_location, color: Colors.white),
                onPressed: _getCurrentLocation,
                tooltip: 'Go Location',
              ),
              IconButton(
                icon: const Icon(Icons.clear, color: Colors.white),
                onPressed: () {
                  context.read<TripPlannerBloc>().add(
                    const TripPlannerEvent.clearRoute(),
                  );
                  setState(() {
                    _nearestPointDistance = null;
                  });
                },
                tooltip: 'Clear Route',
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

  Widget _buildTripInfoPanel(TripPlannerState state) {
    return Positioned(
      bottom: 8,
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
                    'Total Route Distance',
                    '${state.calculateTotalDistance().toStringAsFixed(1)} km',
                  ),
                  if (currentUserPosition != null && _nearestPointDistance != null) ...[
                    const SizedBox(height: 8),
                    _buildInfoRow(
                      'Distance to Route',
                      _isCalculatingDistance
                          ? 'Calculating...'
                          : '${_nearestPointDistance!.toStringAsFixed(1)} km',
                    ),
                  ],
                  const SizedBox(height: 8),
                  _buildInfoRow(
                    'Route Points',
                    '${state.routePointsCount}',
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
          'New destination selected',
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