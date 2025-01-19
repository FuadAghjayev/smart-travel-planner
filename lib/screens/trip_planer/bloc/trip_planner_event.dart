import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'trip_planner_event.freezed.dart';

@freezed
class TripPlannerEvent with _$TripPlannerEvent {
  const TripPlannerEvent._();

  const factory TripPlannerEvent.loadNearbyPlaces({
    required LatLng location,
    @Default(1000) double radius,
    @Default(3) int maxRetries,
  }) = LoadNearbyPlaces;

  const factory TripPlannerEvent.addDestination({
    required LatLng point,
    String? name,
    String? description,
  }) = AddDestination;

  const factory TripPlannerEvent.clearRoute() = ClearRoute;

  const factory TripPlannerEvent.updateDestination({
    required String id,
    required LatLng newLocation,
  }) = UpdateDestination;

  const factory TripPlannerEvent.removeDestination({
    required String id,
  }) = RemoveDestination;

  const factory TripPlannerEvent.reorderDestinations({
    required int oldIndex,
    required int newIndex,
  }) = ReorderDestinations;

  const factory TripPlannerEvent.filterNearbyPlaces({
    String? type,
    double? minRating,
    double? maxDistance,
  }) = FilterNearbyPlaces;
}