// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchDestinations,
    required TResult Function() loadPopularDestinations,
    required TResult Function(Destination destination) selectDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchDestinations,
    TResult? Function()? loadPopularDestinations,
    TResult? Function(Destination destination)? selectDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchDestinations,
    TResult Function()? loadPopularDestinations,
    TResult Function(Destination destination)? selectDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDestinations value) searchDestinations,
    required TResult Function(_LoadPopularDestinations value)
        loadPopularDestinations,
    required TResult Function(_SelectDestination value) selectDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchDestinations value)? searchDestinations,
    TResult? Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult? Function(_SelectDestination value)? selectDestination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDestinations value)? searchDestinations,
    TResult Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult Function(_SelectDestination value)? selectDestination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchDestinationsImplCopyWith<$Res> {
  factory _$$SearchDestinationsImplCopyWith(_$SearchDestinationsImpl value,
          $Res Function(_$SearchDestinationsImpl) then) =
      __$$SearchDestinationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchDestinationsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchDestinationsImpl>
    implements _$$SearchDestinationsImplCopyWith<$Res> {
  __$$SearchDestinationsImplCopyWithImpl(_$SearchDestinationsImpl _value,
      $Res Function(_$SearchDestinationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchDestinationsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDestinationsImpl implements _SearchDestinations {
  const _$SearchDestinationsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'HomeEvent.searchDestinations(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDestinationsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDestinationsImplCopyWith<_$SearchDestinationsImpl> get copyWith =>
      __$$SearchDestinationsImplCopyWithImpl<_$SearchDestinationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchDestinations,
    required TResult Function() loadPopularDestinations,
    required TResult Function(Destination destination) selectDestination,
  }) {
    return searchDestinations(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchDestinations,
    TResult? Function()? loadPopularDestinations,
    TResult? Function(Destination destination)? selectDestination,
  }) {
    return searchDestinations?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchDestinations,
    TResult Function()? loadPopularDestinations,
    TResult Function(Destination destination)? selectDestination,
    required TResult orElse(),
  }) {
    if (searchDestinations != null) {
      return searchDestinations(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDestinations value) searchDestinations,
    required TResult Function(_LoadPopularDestinations value)
        loadPopularDestinations,
    required TResult Function(_SelectDestination value) selectDestination,
  }) {
    return searchDestinations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchDestinations value)? searchDestinations,
    TResult? Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult? Function(_SelectDestination value)? selectDestination,
  }) {
    return searchDestinations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDestinations value)? searchDestinations,
    TResult Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult Function(_SelectDestination value)? selectDestination,
    required TResult orElse(),
  }) {
    if (searchDestinations != null) {
      return searchDestinations(this);
    }
    return orElse();
  }
}

abstract class _SearchDestinations implements HomeEvent {
  const factory _SearchDestinations(final String query) =
      _$SearchDestinationsImpl;

  String get query;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDestinationsImplCopyWith<_$SearchDestinationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPopularDestinationsImplCopyWith<$Res> {
  factory _$$LoadPopularDestinationsImplCopyWith(
          _$LoadPopularDestinationsImpl value,
          $Res Function(_$LoadPopularDestinationsImpl) then) =
      __$$LoadPopularDestinationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPopularDestinationsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadPopularDestinationsImpl>
    implements _$$LoadPopularDestinationsImplCopyWith<$Res> {
  __$$LoadPopularDestinationsImplCopyWithImpl(
      _$LoadPopularDestinationsImpl _value,
      $Res Function(_$LoadPopularDestinationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadPopularDestinationsImpl implements _LoadPopularDestinations {
  const _$LoadPopularDestinationsImpl();

  @override
  String toString() {
    return 'HomeEvent.loadPopularDestinations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPopularDestinationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchDestinations,
    required TResult Function() loadPopularDestinations,
    required TResult Function(Destination destination) selectDestination,
  }) {
    return loadPopularDestinations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchDestinations,
    TResult? Function()? loadPopularDestinations,
    TResult? Function(Destination destination)? selectDestination,
  }) {
    return loadPopularDestinations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchDestinations,
    TResult Function()? loadPopularDestinations,
    TResult Function(Destination destination)? selectDestination,
    required TResult orElse(),
  }) {
    if (loadPopularDestinations != null) {
      return loadPopularDestinations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDestinations value) searchDestinations,
    required TResult Function(_LoadPopularDestinations value)
        loadPopularDestinations,
    required TResult Function(_SelectDestination value) selectDestination,
  }) {
    return loadPopularDestinations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchDestinations value)? searchDestinations,
    TResult? Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult? Function(_SelectDestination value)? selectDestination,
  }) {
    return loadPopularDestinations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDestinations value)? searchDestinations,
    TResult Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult Function(_SelectDestination value)? selectDestination,
    required TResult orElse(),
  }) {
    if (loadPopularDestinations != null) {
      return loadPopularDestinations(this);
    }
    return orElse();
  }
}

abstract class _LoadPopularDestinations implements HomeEvent {
  const factory _LoadPopularDestinations() = _$LoadPopularDestinationsImpl;
}

/// @nodoc
abstract class _$$SelectDestinationImplCopyWith<$Res> {
  factory _$$SelectDestinationImplCopyWith(_$SelectDestinationImpl value,
          $Res Function(_$SelectDestinationImpl) then) =
      __$$SelectDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Destination destination});

  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$SelectDestinationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectDestinationImpl>
    implements _$$SelectDestinationImplCopyWith<$Res> {
  __$$SelectDestinationImplCopyWithImpl(_$SelectDestinationImpl _value,
      $Res Function(_$SelectDestinationImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
  }) {
    return _then(_$SelectDestinationImpl(
      null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }
}

/// @nodoc

class _$SelectDestinationImpl implements _SelectDestination {
  const _$SelectDestinationImpl(this.destination);

  @override
  final Destination destination;

  @override
  String toString() {
    return 'HomeEvent.selectDestination(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDestinationImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDestinationImplCopyWith<_$SelectDestinationImpl> get copyWith =>
      __$$SelectDestinationImplCopyWithImpl<_$SelectDestinationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchDestinations,
    required TResult Function() loadPopularDestinations,
    required TResult Function(Destination destination) selectDestination,
  }) {
    return selectDestination(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchDestinations,
    TResult? Function()? loadPopularDestinations,
    TResult? Function(Destination destination)? selectDestination,
  }) {
    return selectDestination?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchDestinations,
    TResult Function()? loadPopularDestinations,
    TResult Function(Destination destination)? selectDestination,
    required TResult orElse(),
  }) {
    if (selectDestination != null) {
      return selectDestination(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDestinations value) searchDestinations,
    required TResult Function(_LoadPopularDestinations value)
        loadPopularDestinations,
    required TResult Function(_SelectDestination value) selectDestination,
  }) {
    return selectDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchDestinations value)? searchDestinations,
    TResult? Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult? Function(_SelectDestination value)? selectDestination,
  }) {
    return selectDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDestinations value)? searchDestinations,
    TResult Function(_LoadPopularDestinations value)? loadPopularDestinations,
    TResult Function(_SelectDestination value)? selectDestination,
    required TResult orElse(),
  }) {
    if (selectDestination != null) {
      return selectDestination(this);
    }
    return orElse();
  }
}

abstract class _SelectDestination implements HomeEvent {
  const factory _SelectDestination(final Destination destination) =
      _$SelectDestinationImpl;

  Destination get destination;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDestinationImplCopyWith<_$SelectDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Destination> destinations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinations = null,
  }) {
    return _then(_$LoadedImpl(
      null == destinations
          ? _value._destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Destination> destinations)
      : _destinations = destinations;

  final List<Destination> _destinations;
  @override
  List<Destination> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  String toString() {
    return 'HomeState.loaded(destinations: $destinations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._destinations, _destinations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_destinations));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return loaded(destinations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(destinations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(destinations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(final List<Destination> destinations) = _$LoadedImpl;

  List<Destination> get destinations;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultsImplCopyWith<$Res> {
  factory _$$SearchResultsImplCopyWith(
          _$SearchResultsImpl value, $Res Function(_$SearchResultsImpl) then) =
      __$$SearchResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Destination> destinations});
}

/// @nodoc
class __$$SearchResultsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchResultsImpl>
    implements _$$SearchResultsImplCopyWith<$Res> {
  __$$SearchResultsImplCopyWithImpl(
      _$SearchResultsImpl _value, $Res Function(_$SearchResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinations = null,
  }) {
    return _then(_$SearchResultsImpl(
      null == destinations
          ? _value._destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
    ));
  }
}

/// @nodoc

class _$SearchResultsImpl implements _SearchResults {
  const _$SearchResultsImpl(final List<Destination> destinations)
      : _destinations = destinations;

  final List<Destination> _destinations;
  @override
  List<Destination> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  String toString() {
    return 'HomeState.searchResults(destinations: $destinations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsImpl &&
            const DeepCollectionEquality()
                .equals(other._destinations, _destinations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_destinations));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      __$$SearchResultsImplCopyWithImpl<_$SearchResultsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return searchResults(destinations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return searchResults?.call(destinations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(destinations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return searchResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return searchResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(this);
    }
    return orElse();
  }
}

abstract class _SearchResults implements HomeState {
  const factory _SearchResults(final List<Destination> destinations) =
      _$SearchResultsImpl;

  List<Destination> get destinations;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DestinationSelectedImplCopyWith<$Res> {
  factory _$$DestinationSelectedImplCopyWith(_$DestinationSelectedImpl value,
          $Res Function(_$DestinationSelectedImpl) then) =
      __$$DestinationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Destination> destinations, Destination selectedDestination});

  $DestinationCopyWith<$Res> get selectedDestination;
}

/// @nodoc
class __$$DestinationSelectedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DestinationSelectedImpl>
    implements _$$DestinationSelectedImplCopyWith<$Res> {
  __$$DestinationSelectedImplCopyWithImpl(_$DestinationSelectedImpl _value,
      $Res Function(_$DestinationSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinations = null,
    Object? selectedDestination = null,
  }) {
    return _then(_$DestinationSelectedImpl(
      null == destinations
          ? _value._destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
      null == selectedDestination
          ? _value.selectedDestination
          : selectedDestination // ignore: cast_nullable_to_non_nullable
              as Destination,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get selectedDestination {
    return $DestinationCopyWith<$Res>(_value.selectedDestination, (value) {
      return _then(_value.copyWith(selectedDestination: value));
    });
  }
}

/// @nodoc

class _$DestinationSelectedImpl implements _DestinationSelected {
  const _$DestinationSelectedImpl(
      final List<Destination> destinations, this.selectedDestination)
      : _destinations = destinations;

  final List<Destination> _destinations;
  @override
  List<Destination> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  final Destination selectedDestination;

  @override
  String toString() {
    return 'HomeState.destinationSelected(destinations: $destinations, selectedDestination: $selectedDestination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationSelectedImpl &&
            const DeepCollectionEquality()
                .equals(other._destinations, _destinations) &&
            (identical(other.selectedDestination, selectedDestination) ||
                other.selectedDestination == selectedDestination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_destinations), selectedDestination);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationSelectedImplCopyWith<_$DestinationSelectedImpl> get copyWith =>
      __$$DestinationSelectedImplCopyWithImpl<_$DestinationSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return destinationSelected(destinations, selectedDestination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return destinationSelected?.call(destinations, selectedDestination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (destinationSelected != null) {
      return destinationSelected(destinations, selectedDestination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return destinationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return destinationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (destinationSelected != null) {
      return destinationSelected(this);
    }
    return orElse();
  }
}

abstract class _DestinationSelected implements HomeState {
  const factory _DestinationSelected(final List<Destination> destinations,
      final Destination selectedDestination) = _$DestinationSelectedImpl;

  List<Destination> get destinations;
  Destination get selectedDestination;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationSelectedImplCopyWith<_$DestinationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destination> destinations) loaded,
    required TResult Function(List<Destination> destinations) searchResults,
    required TResult Function(
            List<Destination> destinations, Destination selectedDestination)
        destinationSelected,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Destination> destinations)? loaded,
    TResult? Function(List<Destination> destinations)? searchResults,
    TResult? Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destination> destinations)? loaded,
    TResult Function(List<Destination> destinations)? searchResults,
    TResult Function(
            List<Destination> destinations, Destination selectedDestination)?
        destinationSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_DestinationSelected value) destinationSelected,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_DestinationSelected value)? destinationSelected,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_DestinationSelected value)? destinationSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
