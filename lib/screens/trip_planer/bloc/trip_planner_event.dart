
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'trip_planner_event.freezed.dart';

@freezed
class TripPlannerEvent with _$TripPlannerEvent {
  const TripPlannerEvent._();

  const factory TripPlannerEvent.loadNearbyPlaces({
    required LatLng location,
    @Default(1000) double radius,
  }) = _LoadNearbyPlaces;

  const factory TripPlannerEvent.addDestination({
    required LatLng point,
  }) = _AddDestination;

  const factory TripPlannerEvent.clearRoute() = _ClearRoute;
}