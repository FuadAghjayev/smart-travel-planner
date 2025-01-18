import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import '../../../models/destination_model.dart';
import '../../../services/destination_services.dart';
import 'trip_planner_event.dart';
import 'trip_planner_state.dart';

class TripPlannerBloc extends Bloc<TripPlannerEvent, TripPlannerState> {
  final DestinationService _destinationService;

  TripPlannerBloc({
    required DestinationService destinationService,
  })  : _destinationService = destinationService,
        super(const TripPlannerState()) {
    on<TripPlannerEvent>((event, emit) async {
      await event.map(
        loadNearbyPlaces: (event) async {
          await _handleLoadNearbyPlaces(event, emit);
        },
        addDestination: (event) async {
          await _handleAddDestination(event, emit);
        },
        clearRoute: (event) async {
          _handleClearRoute(emit);
        }, updateDestination: (UpdateDestination value) {  },
        removeDestination: (RemoveDestination value) {  },
        reorderDestinations: (ReorderDestinations value) {  },
        filterNearbyPlaces: (FilterNearbyPlaces value) {  },
      );
    });
  }

  Future<void> _handleLoadNearbyPlaces(
      LoadNearbyPlaces event,
      Emitter<TripPlannerState> emit,
      ) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final places = await Destination.fetchNearbyPlacesWithRetry(
        event.location.latitude,
        event.location.longitude,
        radius: event.radius,
        maxRetries: 3,
      );

      emit(state.copyWith(
        nearbyPlaces: places,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'Failed to load nearby places: ${e.toString()}',
        isLoading: false,
      ));
    }
  }

  Future<void> _handleAddDestination(
      AddDestination event,
      Emitter<TripPlannerState> emit,
      ) async {
    try {
      final currentPoints = List<LatLng>.from(state.routePoints)
        ..add(event.point);

      emit(state.copyWith(
        routePoints: currentPoints,
        error: null,
      ));

      // Load nearby places for the new destination
      add(TripPlannerEvent.loadNearbyPlaces(
        location: event.point,
        radius: 1000,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'Failed to add destination: ${e.toString()}',
      ));
    }
  }

  void _handleClearRoute(Emitter<TripPlannerState> emit) {
    emit(const TripPlannerState());
  }

  void initializeWithDestinations(List<LatLng> destinations) {
    if (destinations.isEmpty) return;

    emit(state.copyWith(
      routePoints: destinations,
      isLoading: false,
      error: null,
    ));

    // Load nearby places for the last destination
    add(TripPlannerEvent.loadNearbyPlaces(
      location: destinations.last,
      radius: 1000,
    ));
  }

  Future<List<Destination>> _retryLoadingPlaces(
      LatLng location,
      double radius,
      int maxRetries,
      ) async {
    for (int i = 0; i < maxRetries; i++) {
      try {
        return await Destination.fetchNearbyPlaces(
          location.latitude,
          location.longitude,
          radius: radius,
        );
      } catch (e) {
        if (i == maxRetries - 1) rethrow;
        await Future.delayed(const Duration(seconds: 1) * (i + 1));
      }
    }
    return [];
  }
}