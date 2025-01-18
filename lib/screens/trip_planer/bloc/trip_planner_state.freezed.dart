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
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

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
      bool isLoading,
      String? error});
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
    Object? isLoading = null,
    Object? error = freezed,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bool isLoading,
      String? error});
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
    Object? isLoading = null,
    Object? error = freezed,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TripPlannerStateImpl extends _TripPlannerState {
  const _$TripPlannerStateImpl(
      {final List<Destination> nearbyPlaces = const [],
      final List<LatLng> routePoints = const [],
      this.isLoading = false,
      this.error})
      : _nearbyPlaces = nearbyPlaces,
        _routePoints = routePoints,
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

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TripPlannerState(nearbyPlaces: $nearbyPlaces, routePoints: $routePoints, isLoading: $isLoading, error: $error)';
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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nearbyPlaces),
      const DeepCollectionEquality().hash(_routePoints),
      isLoading,
      error);

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
      final bool isLoading,
      final String? error}) = _$TripPlannerStateImpl;
  const _TripPlannerState._() : super._();

  @override
  List<Destination> get nearbyPlaces;
  @override
  List<LatLng> get routePoints;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TripPlannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripPlannerStateImplCopyWith<_$TripPlannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
