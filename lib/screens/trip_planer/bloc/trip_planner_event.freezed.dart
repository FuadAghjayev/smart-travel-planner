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
    required TResult Function(LatLng location, double radius) loadNearbyPlaces,
    required TResult Function(LatLng point) addDestination,
    required TResult Function() clearRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult? Function(LatLng point)? addDestination,
    TResult? Function()? clearRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult Function(LatLng point)? addDestination,
    TResult Function()? clearRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(_AddDestination value) addDestination,
    required TResult Function(_ClearRoute value) clearRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(_AddDestination value)? addDestination,
    TResult? Function(_ClearRoute value)? clearRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(_AddDestination value)? addDestination,
    TResult Function(_ClearRoute value)? clearRoute,
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
  $Res call({LatLng location, double radius});
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
    ));
  }
}

/// @nodoc

class _$LoadNearbyPlacesImpl extends _LoadNearbyPlaces {
  const _$LoadNearbyPlacesImpl({required this.location, this.radius = 1000})
      : super._();

  @override
  final LatLng location;
  @override
  @JsonKey()
  final double radius;

  @override
  String toString() {
    return 'TripPlannerEvent.loadNearbyPlaces(location: $location, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNearbyPlacesImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, radius);

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
    required TResult Function(LatLng location, double radius) loadNearbyPlaces,
    required TResult Function(LatLng point) addDestination,
    required TResult Function() clearRoute,
  }) {
    return loadNearbyPlaces(location, radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult? Function(LatLng point)? addDestination,
    TResult? Function()? clearRoute,
  }) {
    return loadNearbyPlaces?.call(location, radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult Function(LatLng point)? addDestination,
    TResult Function()? clearRoute,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(location, radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(_AddDestination value) addDestination,
    required TResult Function(_ClearRoute value) clearRoute,
  }) {
    return loadNearbyPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(_AddDestination value)? addDestination,
    TResult? Function(_ClearRoute value)? clearRoute,
  }) {
    return loadNearbyPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(_AddDestination value)? addDestination,
    TResult Function(_ClearRoute value)? clearRoute,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(this);
    }
    return orElse();
  }
}

abstract class _LoadNearbyPlaces extends TripPlannerEvent {
  const factory _LoadNearbyPlaces(
      {required final LatLng location,
      final double radius}) = _$LoadNearbyPlacesImpl;
  const _LoadNearbyPlaces._() : super._();

  LatLng get location;
  double get radius;

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
  $Res call({LatLng point});
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
  }) {
    return _then(_$AddDestinationImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$AddDestinationImpl extends _AddDestination {
  const _$AddDestinationImpl({required this.point}) : super._();

  @override
  final LatLng point;

  @override
  String toString() {
    return 'TripPlannerEvent.addDestination(point: $point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDestinationImpl &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

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
    required TResult Function(LatLng location, double radius) loadNearbyPlaces,
    required TResult Function(LatLng point) addDestination,
    required TResult Function() clearRoute,
  }) {
    return addDestination(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult? Function(LatLng point)? addDestination,
    TResult? Function()? clearRoute,
  }) {
    return addDestination?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult Function(LatLng point)? addDestination,
    TResult Function()? clearRoute,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(_AddDestination value) addDestination,
    required TResult Function(_ClearRoute value) clearRoute,
  }) {
    return addDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(_AddDestination value)? addDestination,
    TResult? Function(_ClearRoute value)? clearRoute,
  }) {
    return addDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(_AddDestination value)? addDestination,
    TResult Function(_ClearRoute value)? clearRoute,
    required TResult orElse(),
  }) {
    if (addDestination != null) {
      return addDestination(this);
    }
    return orElse();
  }
}

abstract class _AddDestination extends TripPlannerEvent {
  const factory _AddDestination({required final LatLng point}) =
      _$AddDestinationImpl;
  const _AddDestination._() : super._();

  LatLng get point;

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

class _$ClearRouteImpl extends _ClearRoute {
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
    required TResult Function(LatLng location, double radius) loadNearbyPlaces,
    required TResult Function(LatLng point) addDestination,
    required TResult Function() clearRoute,
  }) {
    return clearRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult? Function(LatLng point)? addDestination,
    TResult? Function()? clearRoute,
  }) {
    return clearRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng location, double radius)? loadNearbyPlaces,
    TResult Function(LatLng point)? addDestination,
    TResult Function()? clearRoute,
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
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
    required TResult Function(_AddDestination value) addDestination,
    required TResult Function(_ClearRoute value) clearRoute,
  }) {
    return clearRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult? Function(_AddDestination value)? addDestination,
    TResult? Function(_ClearRoute value)? clearRoute,
  }) {
    return clearRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    TResult Function(_AddDestination value)? addDestination,
    TResult Function(_ClearRoute value)? clearRoute,
    required TResult orElse(),
  }) {
    if (clearRoute != null) {
      return clearRoute(this);
    }
    return orElse();
  }
}

abstract class _ClearRoute extends TripPlannerEvent {
  const factory _ClearRoute() = _$ClearRouteImpl;
  const _ClearRoute._() : super._();
}
