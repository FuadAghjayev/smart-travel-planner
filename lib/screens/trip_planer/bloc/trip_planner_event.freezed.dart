// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_planner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripPlannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlannerEventCopyWith<$Res> {
  factory $TripPlannerEventCopyWith(
          TripPlannerEvent value, $Res Function(TripPlannerEvent) then) =
      _$TripPlannerEventCopyWithImpl<$Res, TripPlannerEvent>;
}

/// @nodoc
class _$TripPlannerEventCopyWithImpl<$Res, $Val extends TripPlannerEvent>
    implements $TripPlannerEventCopyWith<$Res> {
  _$TripPlannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadNearbyPlacesImplCopyWith<$Res> {
  factory _$$LoadNearbyPlacesImplCopyWith(_$LoadNearbyPlacesImpl value,
          $Res Function(_$LoadNearbyPlacesImpl) then) =
      __$$LoadNearbyPlacesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location, double radius, int maxRetries});
}

/// @nodoc
class __$$LoadNearbyPlacesImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$LoadNearbyPlacesImpl>
    implements _$$LoadNearbyPlacesImplCopyWith<$Res> {
  __$$LoadNearbyPlacesImplCopyWithImpl(_$LoadNearbyPlacesImpl _value,
      $Res Function(_$LoadNearbyPlacesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? radius = null,
    Object? maxRetries = null,
  }) {
    return _then(_$LoadNearbyPlacesImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      maxRetries: null == maxRetries
          ? _value.maxRetries
          : maxRetries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadNearbyPlacesImpl extends LoadNearbyPlaces {
  const _$LoadNearbyPlacesImpl(
      {required this.location, this.radius = 1000, this.maxRetries = 3})
      : super._();

  @override
  final LatLng location;
  @override
  @JsonKey()
  final double radius;
  @override
  @JsonKey()
  final int maxRetries;

  @override
  String toString() {
    return 'TripPlannerEvent.loadNearbyPlaces(location: $location, radius: $radius, maxRetries: $maxRetries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNearbyPlacesImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.maxRetries, maxRetries) ||
                other.maxRetries == maxRetries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, radius, maxRetries);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNearbyPlacesImplCopyWith<_$LoadNearbyPlacesImpl> get copyWith =>
      __$$LoadNearbyPlacesImplCopyWithImpl<_$LoadNearbyPlacesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return loadNearbyPlaces(location, radius, maxRetries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return loadNearbyPlaces?.call(location, radius, maxRetries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(location, radius, maxRetries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return loadNearbyPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return loadNearbyPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(this);
    }
    return orElse();
  }
}

abstract class LoadNearbyPlaces extends TripPlannerEvent {
  const factory LoadNearbyPlaces(
      {required final LatLng location,
      final double radius,
      final int maxRetries}) = _$LoadNearbyPlacesImpl;
  const LoadNearbyPlaces._() : super._();

  LatLng get location;
  double get radius;
  int get maxRetries;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadNearbyPlacesImplCopyWith<_$LoadNearbyPlacesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDestinationImplCopyWith<$Res> {
  factory _$$AddDestinationImplCopyWith(_$AddDestinationImpl value,
          $Res Function(_$AddDestinationImpl) then) =
      __$$AddDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng point, String? name, String? description});
}

/// @nodoc
class __$$AddDestinationImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$AddDestinationImpl>
    implements _$$AddDestinationImplCopyWith<$Res> {
  __$$AddDestinationImplCopyWithImpl(
      _$AddDestinationImpl _value, $Res Function(_$AddDestinationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AddDestinationImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddDestinationImpl extends AddDestination {
  const _$AddDestinationImpl({required this.point, this.name, this.description})
      : super._();

  @override
  final LatLng point;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'TripPlannerEvent.addDestination(point: $point, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDestinationImpl &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, name, description);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDestinationImplCopyWith<_$AddDestinationImpl> get copyWith =>
      __$$AddDestinationImplCopyWithImpl<_$AddDestinationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return addDestination(point, name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return addDestination?.call(point, name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(point, name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return addDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return addDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(this);
    }
    return orElse();
  }
}

abstract class AddDestination extends TripPlannerEvent {
  const factory AddDestination(
      {required final LatLng point,
      final String? name,
      final String? description}) = _$AddDestinationImpl;
  const AddDestination._() : super._();

  LatLng get point;
  String? get name;
  String? get description;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDestinationImplCopyWith<_$AddDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearRouteImplCopyWith<$Res> {
  factory _$$ClearRouteImplCopyWith(
          _$ClearRouteImpl value, $Res Function(_$ClearRouteImpl) then) =
      __$$ClearRouteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearRouteImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$ClearRouteImpl>
    implements _$$ClearRouteImplCopyWith<$Res> {
  __$$ClearRouteImplCopyWithImpl(
      _$ClearRouteImpl _value, $Res Function(_$ClearRouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearRouteImpl extends ClearRoute {
  const _$ClearRouteImpl() : super._();

  @override
  String toString() {
    return 'TripPlannerEvent.clearRoute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearRouteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return clearRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return clearRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (clearRoute != null) {
      return clearRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return clearRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return clearRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (clearRoute != null) {
      return clearRoute(this);
    }
    return orElse();
  }
}

abstract class ClearRoute extends TripPlannerEvent {
  const factory ClearRoute() = _$ClearRouteImpl;
  const ClearRoute._() : super._();
}

/// @nodoc
abstract class _$$UpdateDestinationImplCopyWith<$Res> {
  factory _$$UpdateDestinationImplCopyWith(_$UpdateDestinationImpl value,
          $Res Function(_$UpdateDestinationImpl) then) =
      __$$UpdateDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, LatLng newLocation});
}

/// @nodoc
class __$$UpdateDestinationImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$UpdateDestinationImpl>
    implements _$$UpdateDestinationImplCopyWith<$Res> {
  __$$UpdateDestinationImplCopyWithImpl(_$UpdateDestinationImpl _value,
      $Res Function(_$UpdateDestinationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newLocation = null,
  }) {
    return _then(_$UpdateDestinationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      newLocation: null == newLocation
          ? _value.newLocation
          : newLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$UpdateDestinationImpl extends UpdateDestination {
  const _$UpdateDestinationImpl({required this.id, required this.newLocation})
      : super._();

  @override
  final String id;
  @override
  final LatLng newLocation;

  @override
  String toString() {
    return 'TripPlannerEvent.updateDestination(id: $id, newLocation: $newLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDestinationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.newLocation, newLocation) ||
                other.newLocation == newLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, newLocation);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDestinationImplCopyWith<_$UpdateDestinationImpl> get copyWith =>
      __$$UpdateDestinationImplCopyWithImpl<_$UpdateDestinationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return updateDestination(id, newLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return updateDestination?.call(id, newLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateDestination != null) {
      return updateDestination(id, newLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return updateDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return updateDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateDestination != null) {
      return updateDestination(this);
    }
    return orElse();
  }
}

abstract class UpdateDestination extends TripPlannerEvent {
  const factory UpdateDestination(
      {required final String id,
      required final LatLng newLocation}) = _$UpdateDestinationImpl;
  const UpdateDestination._() : super._();

  String get id;
  LatLng get newLocation;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDestinationImplCopyWith<_$UpdateDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDestinationImplCopyWith<$Res> {
  factory _$$RemoveDestinationImplCopyWith(_$RemoveDestinationImpl value,
          $Res Function(_$RemoveDestinationImpl) then) =
      __$$RemoveDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveDestinationImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$RemoveDestinationImpl>
    implements _$$RemoveDestinationImplCopyWith<$Res> {
  __$$RemoveDestinationImplCopyWithImpl(_$RemoveDestinationImpl _value,
      $Res Function(_$RemoveDestinationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveDestinationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveDestinationImpl extends RemoveDestination {
  const _$RemoveDestinationImpl({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'TripPlannerEvent.removeDestination(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDestinationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDestinationImplCopyWith<_$RemoveDestinationImpl> get copyWith =>
      __$$RemoveDestinationImplCopyWithImpl<_$RemoveDestinationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return removeDestination(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return removeDestination?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (removeDestination != null) {
      return removeDestination(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return removeDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return removeDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (removeDestination != null) {
      return removeDestination(this);
    }
    return orElse();
  }
}

abstract class RemoveDestination extends TripPlannerEvent {
  const factory RemoveDestination({required final String id}) =
      _$RemoveDestinationImpl;
  const RemoveDestination._() : super._();

  String get id;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveDestinationImplCopyWith<_$RemoveDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderDestinationsImplCopyWith<$Res> {
  factory _$$ReorderDestinationsImplCopyWith(_$ReorderDestinationsImpl value,
          $Res Function(_$ReorderDestinationsImpl) then) =
      __$$ReorderDestinationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ReorderDestinationsImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$ReorderDestinationsImpl>
    implements _$$ReorderDestinationsImplCopyWith<$Res> {
  __$$ReorderDestinationsImplCopyWithImpl(_$ReorderDestinationsImpl _value,
      $Res Function(_$ReorderDestinationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ReorderDestinationsImpl(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderDestinationsImpl extends ReorderDestinations {
  const _$ReorderDestinationsImpl(
      {required this.oldIndex, required this.newIndex})
      : super._();

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'TripPlannerEvent.reorderDestinations(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderDestinationsImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderDestinationsImplCopyWith<_$ReorderDestinationsImpl> get copyWith =>
      __$$ReorderDestinationsImplCopyWithImpl<_$ReorderDestinationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return reorderDestinations(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return reorderDestinations?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (reorderDestinations != null) {
      return reorderDestinations(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return reorderDestinations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return reorderDestinations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (reorderDestinations != null) {
      return reorderDestinations(this);
    }
    return orElse();
  }
}

abstract class ReorderDestinations extends TripPlannerEvent {
  const factory ReorderDestinations(
      {required final int oldIndex,
      required final int newIndex}) = _$ReorderDestinationsImpl;
  const ReorderDestinations._() : super._();

  int get oldIndex;
  int get newIndex;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReorderDestinationsImplCopyWith<_$ReorderDestinationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterNearbyPlacesImplCopyWith<$Res> {
  factory _$$FilterNearbyPlacesImplCopyWith(_$FilterNearbyPlacesImpl value,
          $Res Function(_$FilterNearbyPlacesImpl) then) =
      __$$FilterNearbyPlacesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? type, double? minRating, double? maxDistance});
}

/// @nodoc
class __$$FilterNearbyPlacesImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$FilterNearbyPlacesImpl>
    implements _$$FilterNearbyPlacesImplCopyWith<$Res> {
  __$$FilterNearbyPlacesImplCopyWithImpl(_$FilterNearbyPlacesImpl _value,
      $Res Function(_$FilterNearbyPlacesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? minRating = freezed,
    Object? maxDistance = freezed,
  }) {
    return _then(_$FilterNearbyPlacesImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      maxDistance: freezed == maxDistance
          ? _value.maxDistance
          : maxDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$FilterNearbyPlacesImpl extends FilterNearbyPlaces {
  const _$FilterNearbyPlacesImpl({this.type, this.minRating, this.maxDistance})
      : super._();

  @override
  final String? type;
  @override
  final double? minRating;
  @override
  final double? maxDistance;

  @override
  String toString() {
    return 'TripPlannerEvent.filterNearbyPlaces(type: $type, minRating: $minRating, maxDistance: $maxDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNearbyPlacesImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.maxDistance, maxDistance) ||
                other.maxDistance == maxDistance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, minRating, maxDistance);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNearbyPlacesImplCopyWith<_$FilterNearbyPlacesImpl> get copyWith =>
      __$$FilterNearbyPlacesImplCopyWithImpl<_$FilterNearbyPlacesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return filterNearbyPlaces(type, minRating, maxDistance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return filterNearbyPlaces?.call(type, minRating, maxDistance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (filterNearbyPlaces != null) {
      return filterNearbyPlaces(type, minRating, maxDistance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return filterNearbyPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return filterNearbyPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (filterNearbyPlaces != null) {
      return filterNearbyPlaces(this);
    }
    return orElse();
  }
}

abstract class FilterNearbyPlaces extends TripPlannerEvent {
  const factory FilterNearbyPlaces(
      {final String? type,
      final double? minRating,
      final double? maxDistance}) = _$FilterNearbyPlacesImpl;
  const FilterNearbyPlaces._() : super._();

  String? get type;
  double? get minRating;
  double? get maxDistance;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterNearbyPlacesImplCopyWith<_$FilterNearbyPlacesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentLocationImplCopyWith<$Res> {
  factory _$$UpdateCurrentLocationImplCopyWith(
          _$UpdateCurrentLocationImpl value,
          $Res Function(_$UpdateCurrentLocationImpl) then) =
      __$$UpdateCurrentLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng currentLocation});
}

/// @nodoc
class __$$UpdateCurrentLocationImplCopyWithImpl<$Res>
    extends _$TripPlannerEventCopyWithImpl<$Res, _$UpdateCurrentLocationImpl>
    implements _$$UpdateCurrentLocationImplCopyWith<$Res> {
  __$$UpdateCurrentLocationImplCopyWithImpl(_$UpdateCurrentLocationImpl _value,
      $Res Function(_$UpdateCurrentLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
  }) {
    return _then(_$UpdateCurrentLocationImpl(
      null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentLocationImpl extends UpdateCurrentLocation {
  const _$UpdateCurrentLocationImpl(this.currentLocation) : super._();

  @override
  final LatLng currentLocation;

  @override
  String toString() {
    return 'TripPlannerEvent.updateCurrentLocation(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentLocationImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation);

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentLocationImplCopyWith<_$UpdateCurrentLocationImpl>
      get copyWith => __$$UpdateCurrentLocationImplCopyWithImpl<
          _$UpdateCurrentLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng location, double radius, int maxRetries)
        loadNearbyPlaces,
    required TResult Function(LatLng point, String? name, String? description)
        addDestination,
    required TResult Function() clearRoute,
    required TResult Function(String id, LatLng newLocation) updateDestination,
    required TResult Function(String id) removeDestination,
    required TResult Function(int oldIndex, int newIndex) reorderDestinations,
    required TResult Function(
            String? type, double? minRating, double? maxDistance)
        filterNearbyPlaces,
    required TResult Function(LatLng currentLocation) updateCurrentLocation,
  }) {
    return updateCurrentLocation(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult? Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult? Function()? clearRoute,
    TResult? Function(String id, LatLng newLocation)? updateDestination,
    TResult? Function(String id)? removeDestination,
    TResult? Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult? Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult? Function(LatLng currentLocation)? updateCurrentLocation,
  }) {
    return updateCurrentLocation?.call(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius, int maxRetries)?
        loadNearbyPlaces,
    TResult Function(LatLng point, String? name, String? description)?
        addDestination,
    TResult Function()? clearRoute,
    TResult Function(String id, LatLng newLocation)? updateDestination,
    TResult Function(String id)? removeDestination,
    TResult Function(int oldIndex, int newIndex)? reorderDestinations,
    TResult Function(String? type, double? minRating, double? maxDistance)?
        filterNearbyPlaces,
    TResult Function(LatLng currentLocation)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation(currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(AddDestination value) addDestination,
    required TResult Function(ClearRoute value) clearRoute,
    required TResult Function(UpdateDestination value) updateDestination,
    required TResult Function(RemoveDestination value) removeDestination,
    required TResult Function(ReorderDestinations value) reorderDestinations,
    required TResult Function(FilterNearbyPlaces value) filterNearbyPlaces,
    required TResult Function(UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return updateCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(AddDestination value)? addDestination,
    TResult? Function(ClearRoute value)? clearRoute,
    TResult? Function(UpdateDestination value)? updateDestination,
    TResult? Function(RemoveDestination value)? removeDestination,
    TResult? Function(ReorderDestinations value)? reorderDestinations,
    TResult? Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult? Function(UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return updateCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(AddDestination value)? addDestination,
    TResult Function(ClearRoute value)? clearRoute,
    TResult Function(UpdateDestination value)? updateDestination,
    TResult Function(RemoveDestination value)? removeDestination,
    TResult Function(ReorderDestinations value)? reorderDestinations,
    TResult Function(FilterNearbyPlaces value)? filterNearbyPlaces,
    TResult Function(UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentLocation extends TripPlannerEvent {
  const factory UpdateCurrentLocation(final LatLng currentLocation) =
      _$UpdateCurrentLocationImpl;
  const UpdateCurrentLocation._() : super._();

  LatLng get currentLocation;

  /// Create a copy of TripPlannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCurrentLocationImplCopyWith<_$UpdateCurrentLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
