import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../services/destionation_services.dart';
import 'trip_planner_event.dart';
import 'trip_planner_state.dart';
import 'package:latlong2/latlong.dart';

class TripPlannerBloc extends Bloc<TripPlannerEvent, TripPlannerState> {
  final DestinationService _destinationService;

  TripPlannerBloc({
    required DestinationService destinationService,
  })  : _destinationService = destinationService,
        super(const TripPlannerState()) {
    on<TripPlannerEvent>((event, emit) async {
      await event.map(
        loadNearbyPlaces: (event) async {
          emit(state.copyWith(isLoading: true, error: null));

          try {
            final places = await DestinationService.fetchNearbyPlaces(
              event.location.latitude,
              event.location.longitude,
              event.radius,
            );

            emit(state.copyWith(
              nearbyPlaces: places,
              isLoading: false,
            ));
          } catch (e) {
            emit(state.copyWith(
              error: e.toString(),
              isLoading: false,
            ));
          }
        },

        addDestination: (event) async {
          final currentPoints = List<LatLng>.from(state.routePoints)
            ..add(event.point);

          emit(state.copyWith(
            routePoints: currentPoints,
          ));

          add(TripPlannerEvent.loadNearbyPlaces(
            location: event.point,
            radius: 1000,
          ));
        },

        clearRoute: (event) {
          emit(const TripPlannerState());
        },
      );
    });
  }
  void initializeWithDestinations(List<LatLng> destinations) {
    if (destinations.isEmpty) return;

    emit(state.copyWith(
      routePoints: destinations,
      isLoading: false,
    ));

    add(TripPlannerEvent.loadNearbyPlaces(
      location: destinations.last,
      radius: 1000,
    ));
  }
}