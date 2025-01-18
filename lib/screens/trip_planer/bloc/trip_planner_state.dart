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
    @Default([]) List<Destination> selectedDestinations,
    @Default(false) bool isLoading,
    @Default(1000.0) double searchRadius,
    String? activeDestinationId,
    String? error,
    @Default({}) Map<String, List<Destination>> placesByType,
    @Default(0.0) double minRating,
    @Default(double.infinity) double maxDistance,
    LatLng? currentLocation,
  }) = _TripPlannerState;

  bool get hasError => error != null;
  bool get hasRoutePoints => routePoints.isNotEmpty;
  bool get hasNearbyPlaces => nearbyPlaces.isNotEmpty;
  bool get hasSelectedDestinations => selectedDestinations.isNotEmpty;
  bool get hasActiveDestination => activeDestinationId != null;
  bool get hasCurrentLocation => currentLocation != null;

  int get routePointsCount => routePoints.length;
  LatLng? get lastAddedPoint => routePoints.isEmpty ? null : routePoints.last;
  int get selectedDestinationsCount => selectedDestinations.length;

  List<Destination> get filteredNearbyPlaces => nearbyPlaces.where((place) {
    if (minRating > 0 && (place.rating ?? 0) < minRating) return false;
    if (maxDistance < double.infinity) {
      final distance = double.tryParse(place.distance.replaceAll(' km', '')) ?? 0;
      if (distance > maxDistance) return false;
    }
    return true;
  }).toList();

  List<Destination> getPlacesByType(String type) =>
      placesByType[type] ?? [];

  Destination? get activeDestination => selectedDestinations
      .cast<Destination?>()
      .firstWhere(
        (d) => d?.id == activeDestinationId,
    orElse: () => null,
  );

  double calculateTotalDistance() {
    if (routePoints.length < 2) return 0;

    double totalDistance = 0;
    for (int i = 0; i < routePoints.length - 1; i++) {
      final start = routePoints[i];
      final end = routePoints[i + 1];
      totalDistance += calculateDistanceBetweenPoints(start, end);
    }
    return totalDistance;
  }

  double calculateDistanceBetweenPoints(LatLng start, LatLng end) {
    const Distance distance = Distance();
    return distance.as(
      LengthUnit.Kilometer,
      start,
      end,
    );
  }

  double calculateDistanceToCurrentLocation(LatLng point) {
    if (currentLocation == null) return 0;
    return calculateDistanceBetweenPoints(currentLocation!, point);
  }

  factory TripPlannerState.initial() => const TripPlannerState();

  factory TripPlannerState.loading() => const TripPlannerState(isLoading: true);

  factory TripPlannerState.error(String message) => TripPlannerState(error: message);

  factory TripPlannerState.withNearbyPlaces({
    required List<Destination> places,
    required List<LatLng> routePoints,
    LatLng? currentLocation,
  }) => TripPlannerState(
    nearbyPlaces: places,
    routePoints: routePoints,
    currentLocation: currentLocation,
  );

  TripPlannerState addDestination(Destination destination) {
    final distance = currentLocation != null
        ? calculateDistanceToCurrentLocation(LatLng(destination.latitude, destination.longitude))
        : 0.0;

    final updatedDestination = destination.copyWith(
      distance: '${distance.toStringAsFixed(1)} km',
    );

    return copyWith(
      selectedDestinations: [...selectedDestinations, updatedDestination],
      routePoints: [...routePoints, LatLng(destination.latitude, destination.longitude)],
    );
  }

  TripPlannerState removeDestination(String id) {
    final newSelectedDestinations = selectedDestinations
        .where((d) => d.id != id)
        .toList();
    final newRoutePoints = newSelectedDestinations
        .map((d) => LatLng(d.latitude, d.longitude))
        .toList();

    return copyWith(
      selectedDestinations: newSelectedDestinations,
      routePoints: newRoutePoints,
      activeDestinationId: activeDestinationId == id ? null : activeDestinationId,
    );
  }

  TripPlannerState reorderDestinations(int oldIndex, int newIndex) {
    final List<Destination> newSelected = List.from(selectedDestinations);
    final item = newSelected.removeAt(oldIndex);
    newSelected.insert(newIndex, item);

    final newRoutePoints = newSelected
        .map((d) => LatLng(d.latitude, d.longitude))
        .toList();

    return copyWith(
      selectedDestinations: newSelected,
      routePoints: newRoutePoints,
    );
  }

  TripPlannerState updateFilters({
    double? newMinRating,
    double? newMaxDistance,
  }) {
    return copyWith(
      minRating: newMinRating ?? minRating,
      maxDistance: newMaxDistance ?? maxDistance,
    );
  }

  TripPlannerState setActiveDestination(String? id) {
    return copyWith(activeDestinationId: id);
  }

  TripPlannerState updateSearchRadius(double newRadius) {
    return copyWith(searchRadius: newRadius);
  }

  TripPlannerState updateCurrentLocation(LatLng location) {
    return copyWith(currentLocation: location);
  }
}