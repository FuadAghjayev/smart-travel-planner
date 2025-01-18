import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import '../../../models/destination_model.dart';

part 'trip_planner_state.freezed.dart';

@freezed
class TripPlannerState with _$TripPlannerState {
  const TripPlannerState._();

  const factory TripPlannerState({
    @Default([]) List<Destination> nearbyPlaces,
    @Default([]) List<LatLng> routePoints,
    @Default(false) bool isLoading,
    String? error,
  }) = _TripPlannerState;

  bool get hasError => error != null;
  bool get hasRoutePoints => routePoints.isNotEmpty;
  int get routePointsCount => routePoints.length;
  LatLng? get lastAddedPoint => routePoints.isEmpty ? null : routePoints.last;

  double calculateTotalDistance() {
    if (routePoints.length < 2) return 0;

    double totalDistance = 0;
    for (int i = 0; i < routePoints.length - 1; i++) {
      final start = routePoints[i];
      final end = routePoints[i + 1];
      const Distance distance = Distance();
      totalDistance += distance.as(
        LengthUnit.Kilometer,
        start,
        end,
      );
    }
    return totalDistance;
  }

  factory TripPlannerState.initial() => const TripPlannerState();

  factory TripPlannerState.loading() => const TripPlannerState(isLoading: true);

  factory TripPlannerState.error(String message) => TripPlannerState(error: message);
}