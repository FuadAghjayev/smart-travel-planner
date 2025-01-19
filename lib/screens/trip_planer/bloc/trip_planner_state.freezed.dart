// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_planner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripPlannerState {
  List<Destination> get nearbyPlaces => throw _privateConstructorUsedError;
  List<LatLng> get routePoints => throw _privateConstructorUsedError;
  List<Destination> get selectedDestinations =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  double get searchRadius => throw _privateConstructorUsedError;
  String? get activeDestinationId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, List<Destination>> get placesByType =>
      throw _privateConstructorUsedError;
  double get minRating => throw _privateConstructorUsedError;
  double get maxDistance => throw _privateConstructorUsedError;
  LatLng? get currentLocation => throw _privateConstructorUsedError;

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripPlannerStateCopyWith<TripPlannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlannerStateCopyWith<$Res> {
  factory $TripPlannerStateCopyWith(
          TripPlannerState value, $Res Function(TripPlannerState) then) =
      _$TripPlannerStateCopyWithImpl<$Res, TripPlannerState>;
  @useResult
  $Res call(
      {List<Destination> nearbyPlaces,
      List<LatLng> routePoints,
      List<Destination> selectedDestinations,
      bool isLoading,
      double searchRadius,
      String? activeDestinationId,
      String? error,
      Map<String, List<Destination>> placesByType,
      double minRating,
      double maxDistance,
      LatLng? currentLocation});
}

/// @nodoc
class _$TripPlannerStateCopyWithImpl<$Res, $Val extends TripPlannerState>
    implements $TripPlannerStateCopyWith<$Res> {
  _$TripPlannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearbyPlaces = null,
    Object? routePoints = null,
    Object? selectedDestinations = null,
    Object? isLoading = null,
    Object? searchRadius = null,
    Object? activeDestinationId = freezed,
    Object? error = freezed,
    Object? placesByType = null,
    Object? minRating = null,
    Object? maxDistance = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      nearbyPlaces: null == nearbyPlaces
          ? _value.nearbyPlaces
          : nearbyPlaces // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
      routePoints: null == routePoints
          ? _value.routePoints
          : routePoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      selectedDestinations: null == selectedDestinations
          ? _value.selectedDestinations
          : selectedDestinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRadius: null == searchRadius
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as double,
      activeDestinationId: freezed == activeDestinationId
          ? _value.activeDestinationId
          : activeDestinationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      placesByType: null == placesByType
          ? _value.placesByType
          : placesByType // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Destination>>,
      minRating: null == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripPlannerStateImplCopyWith<$Res>
    implements $TripPlannerStateCopyWith<$Res> {
  factory _$$TripPlannerStateImplCopyWith(_$TripPlannerStateImpl value,
          $Res Function(_$TripPlannerStateImpl) then) =
      __$$TripPlannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Destination> nearbyPlaces,
      List<LatLng> routePoints,
      List<Destination> selectedDestinations,
      bool isLoading,
      double searchRadius,
      String? activeDestinationId,
      String? error,
      Map<String, List<Destination>> placesByType,
      double minRating,
      double maxDistance,
      LatLng? currentLocation});
}

/// @nodoc
class __$$TripPlannerStateImplCopyWithImpl<$Res>
    extends _$TripPlannerStateCopyWithImpl<$Res, _$TripPlannerStateImpl>
    implements _$$TripPlannerStateImplCopyWith<$Res> {
  __$$TripPlannerStateImplCopyWithImpl(_$TripPlannerStateImpl _value,
      $Res Function(_$TripPlannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearbyPlaces = null,
    Object? routePoints = null,
    Object? selectedDestinations = null,
    Object? isLoading = null,
    Object? searchRadius = null,
    Object? activeDestinationId = freezed,
    Object? error = freezed,
    Object? placesByType = null,
    Object? minRating = null,
    Object? maxDistance = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_$TripPlannerStateImpl(
      nearbyPlaces: null == nearbyPlaces
          ? _value._nearbyPlaces
          : nearbyPlaces // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
      routePoints: null == routePoints
          ? _value._routePoints
          : routePoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      selectedDestinations: null == selectedDestinations
          ? _value._selectedDestinations
          : selectedDestinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRadius: null == searchRadius
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as double,
      activeDestinationId: freezed == activeDestinationId
          ? _value.activeDestinationId
          : activeDestinationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      placesByType: null == placesByType
          ? _value._placesByType
          : placesByType // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Destination>>,
      minRating: null == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double,
      maxDistance: null == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$TripPlannerStateImpl extends _TripPlannerState {
  const _$TripPlannerStateImpl(
      {final List<Destination> nearbyPlaces = const [],
      final List<LatLng> routePoints = const [],
      final List<Destination> selectedDestinations = const [],
      this.isLoading = false,
      this.searchRadius = 1000.0,
      this.activeDestinationId,
      this.error,
      final Map<String, List<Destination>> placesByType = const {},
      this.minRating = 0.0,
      this.maxDistance = double.infinity,
      this.currentLocation})
      : _nearbyPlaces = nearbyPlaces,
        _routePoints = routePoints,
        _selectedDestinations = selectedDestinations,
        _placesByType = placesByType,
        super._();

  final List<Destination> _nearbyPlaces;
  @override
  @JsonKey()
  List<Destination> get nearbyPlaces {
    if (_nearbyPlaces is EqualUnmodifiableListView) return _nearbyPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyPlaces);
  }

  final List<LatLng> _routePoints;
  @override
  @JsonKey()
  List<LatLng> get routePoints {
    if (_routePoints is EqualUnmodifiableListView) return _routePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routePoints);
  }

  final List<Destination> _selectedDestinations;
  @override
  @JsonKey()
  List<Destination> get selectedDestinations {
    if (_selectedDestinations is EqualUnmodifiableListView)
      return _selectedDestinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDestinations);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final double searchRadius;
  @override
  final String? activeDestinationId;
  @override
  final String? error;
  final Map<String, List<Destination>> _placesByType;
  @override
  @JsonKey()
  Map<String, List<Destination>> get placesByType {
    if (_placesByType is EqualUnmodifiableMapView) return _placesByType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_placesByType);
  }

  @override
  @JsonKey()
  final double minRating;
  @override
  @JsonKey()
  final double maxDistance;
  @override
  final LatLng? currentLocation;

  @override
  String toString() {
    return 'TripPlannerState(nearbyPlaces: $nearbyPlaces, routePoints: $routePoints, selectedDestinations: $selectedDestinations, isLoading: $isLoading, searchRadius: $searchRadius, activeDestinationId: $activeDestinationId, error: $error, placesByType: $placesByType, minRating: $minRating, maxDistance: $maxDistance, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripPlannerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._nearbyPlaces, _nearbyPlaces) &&
            const DeepCollectionEquality()
                .equals(other._routePoints, _routePoints) &&
            const DeepCollectionEquality()
                .equals(other._selectedDestinations, _selectedDestinations) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchRadius, searchRadius) ||
                other.searchRadius == searchRadius) &&
            (identical(other.activeDestinationId, activeDestinationId) ||
                other.activeDestinationId == activeDestinationId) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._placesByType, _placesByType) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nearbyPlaces),
      const DeepCollectionEquality().hash(_routePoints),
      const DeepCollectionEquality().hash(_selectedDestinations),
      isLoading,
      searchRadius,
      activeDestinationId,
      error,
      const DeepCollectionEquality().hash(_placesByType),
      minRating,
      maxDistance,
      currentLocation);

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripPlannerStateImplCopyWith<_$TripPlannerStateImpl> get copyWith =>
      __$$TripPlannerStateImplCopyWithImpl<_$TripPlannerStateImpl>(
          this, _$identity);
}

abstract class _TripPlannerState extends TripPlannerState {
  const factory _TripPlannerState(
      {final List<Destination> nearbyPlaces,
      final List<LatLng> routePoints,
      final List<Destination> selectedDestinations,
      final bool isLoading,
      final double searchRadius,
      final String? activeDestinationId,
      final String? error,
      final Map<String, List<Destination>> placesByType,
      final double minRating,
      final double maxDistance,
      final LatLng? currentLocation}) = _$TripPlannerStateImpl;
  const _TripPlannerState._() : super._();

  @override
  List<Destination> get nearbyPlaces;
  @override
  List<LatLng> get routePoints;
  @override
  List<Destination> get selectedDestinations;
  @override
  bool get isLoading;
  @override
  double get searchRadius;
  @override
  String? get activeDestinationId;
  @override
  String? get error;
  @override
  Map<String, List<Destination>> get placesByType;
  @override
  double get minRating;
  @override
  double get maxDistance;
  @override
  LatLng? get currentLocation;

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripPlannerStateImplCopyWith<_$TripPlannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
