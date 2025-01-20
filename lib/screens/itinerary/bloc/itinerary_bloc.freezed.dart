// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItineraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryEventCopyWith<$Res> {
  factory $ItineraryEventCopyWith(
          ItineraryEvent value, $Res Function(ItineraryEvent) then) =
      _$ItineraryEventCopyWithImpl<$Res, ItineraryEvent>;
}

/// @nodoc
class _$ItineraryEventCopyWithImpl<$Res, $Val extends ItineraryEvent>
    implements $ItineraryEventCopyWith<$Res> {
  _$ItineraryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadItineraryRequestedImplCopyWith<$Res> {
  factory _$$LoadItineraryRequestedImplCopyWith(
          _$LoadItineraryRequestedImpl value,
          $Res Function(_$LoadItineraryRequestedImpl) then) =
      __$$LoadItineraryRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadItineraryRequestedImplCopyWithImpl<$Res>
    extends _$ItineraryEventCopyWithImpl<$Res, _$LoadItineraryRequestedImpl>
    implements _$$LoadItineraryRequestedImplCopyWith<$Res> {
  __$$LoadItineraryRequestedImplCopyWithImpl(
      _$LoadItineraryRequestedImpl _value,
      $Res Function(_$LoadItineraryRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadItineraryRequestedImpl implements _LoadItineraryRequested {
  const _$LoadItineraryRequestedImpl();

  @override
  String toString() {
    return 'ItineraryEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItineraryRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadItineraryRequested implements ItineraryEvent {
  const factory _LoadItineraryRequested() = _$LoadItineraryRequestedImpl;
}

/// @nodoc
abstract class _$$AddItineraryRequestedImplCopyWith<$Res> {
  factory _$$AddItineraryRequestedImplCopyWith(
          _$AddItineraryRequestedImpl value,
          $Res Function(_$AddItineraryRequestedImpl) then) =
      __$$AddItineraryRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destination, String activity, DateTime date, String time});
}

/// @nodoc
class __$$AddItineraryRequestedImplCopyWithImpl<$Res>
    extends _$ItineraryEventCopyWithImpl<$Res, _$AddItineraryRequestedImpl>
    implements _$$AddItineraryRequestedImplCopyWith<$Res> {
  __$$AddItineraryRequestedImplCopyWithImpl(_$AddItineraryRequestedImpl _value,
      $Res Function(_$AddItineraryRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? activity = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_$AddItineraryRequestedImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddItineraryRequestedImpl implements _AddItineraryRequested {
  const _$AddItineraryRequestedImpl(
      {required this.destination,
      required this.activity,
      required this.date,
      required this.time});

  @override
  final String destination;
  @override
  final String activity;
  @override
  final DateTime date;
  @override
  final String time;

  @override
  String toString() {
    return 'ItineraryEvent.addRequested(destination: $destination, activity: $activity, date: $date, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItineraryRequestedImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, destination, activity, date, time);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItineraryRequestedImplCopyWith<_$AddItineraryRequestedImpl>
      get copyWith => __$$AddItineraryRequestedImplCopyWithImpl<
          _$AddItineraryRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) {
    return addRequested(destination, activity, date, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) {
    return addRequested?.call(destination, activity, date, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(destination, activity, date, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) {
    return addRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) {
    return addRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(this);
    }
    return orElse();
  }
}

abstract class _AddItineraryRequested implements ItineraryEvent {
  const factory _AddItineraryRequested(
      {required final String destination,
      required final String activity,
      required final DateTime date,
      required final String time}) = _$AddItineraryRequestedImpl;

  String get destination;
  String get activity;
  DateTime get date;
  String get time;

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItineraryRequestedImplCopyWith<_$AddItineraryRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItineraryRequestedImplCopyWith<$Res> {
  factory _$$UpdateItineraryRequestedImplCopyWith(
          _$UpdateItineraryRequestedImpl value,
          $Res Function(_$UpdateItineraryRequestedImpl) then) =
      __$$UpdateItineraryRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItineraryItem item});
}

/// @nodoc
class __$$UpdateItineraryRequestedImplCopyWithImpl<$Res>
    extends _$ItineraryEventCopyWithImpl<$Res, _$UpdateItineraryRequestedImpl>
    implements _$$UpdateItineraryRequestedImplCopyWith<$Res> {
  __$$UpdateItineraryRequestedImplCopyWithImpl(
      _$UpdateItineraryRequestedImpl _value,
      $Res Function(_$UpdateItineraryRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$UpdateItineraryRequestedImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItineraryItem,
    ));
  }
}

/// @nodoc

class _$UpdateItineraryRequestedImpl implements _UpdateItineraryRequested {
  const _$UpdateItineraryRequestedImpl({required this.item});

  @override
  final ItineraryItem item;

  @override
  String toString() {
    return 'ItineraryEvent.updateRequested(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItineraryRequestedImpl &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItineraryRequestedImplCopyWith<_$UpdateItineraryRequestedImpl>
      get copyWith => __$$UpdateItineraryRequestedImplCopyWithImpl<
          _$UpdateItineraryRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) {
    return updateRequested(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) {
    return updateRequested?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateItineraryRequested implements ItineraryEvent {
  const factory _UpdateItineraryRequested({required final ItineraryItem item}) =
      _$UpdateItineraryRequestedImpl;

  ItineraryItem get item;

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItineraryRequestedImplCopyWith<_$UpdateItineraryRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItineraryRequestedImplCopyWith<$Res> {
  factory _$$DeleteItineraryRequestedImplCopyWith(
          _$DeleteItineraryRequestedImpl value,
          $Res Function(_$DeleteItineraryRequestedImpl) then) =
      __$$DeleteItineraryRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteItineraryRequestedImplCopyWithImpl<$Res>
    extends _$ItineraryEventCopyWithImpl<$Res, _$DeleteItineraryRequestedImpl>
    implements _$$DeleteItineraryRequestedImplCopyWith<$Res> {
  __$$DeleteItineraryRequestedImplCopyWithImpl(
      _$DeleteItineraryRequestedImpl _value,
      $Res Function(_$DeleteItineraryRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItineraryRequestedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteItineraryRequestedImpl implements _DeleteItineraryRequested {
  const _$DeleteItineraryRequestedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ItineraryEvent.deleteRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItineraryRequestedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItineraryRequestedImplCopyWith<_$DeleteItineraryRequestedImpl>
      get copyWith => __$$DeleteItineraryRequestedImplCopyWithImpl<
          _$DeleteItineraryRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) {
    return deleteRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) {
    return deleteRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) {
    return deleteRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) {
    return deleteRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(this);
    }
    return orElse();
  }
}

abstract class _DeleteItineraryRequested implements ItineraryEvent {
  const factory _DeleteItineraryRequested({required final int id}) =
      _$DeleteItineraryRequestedImpl;

  int get id;

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteItineraryRequestedImplCopyWith<_$DeleteItineraryRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderItineraryRequestedImplCopyWith<$Res> {
  factory _$$ReorderItineraryRequestedImplCopyWith(
          _$ReorderItineraryRequestedImpl value,
          $Res Function(_$ReorderItineraryRequestedImpl) then) =
      __$$ReorderItineraryRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItineraryItem> items});
}

/// @nodoc
class __$$ReorderItineraryRequestedImplCopyWithImpl<$Res>
    extends _$ItineraryEventCopyWithImpl<$Res, _$ReorderItineraryRequestedImpl>
    implements _$$ReorderItineraryRequestedImplCopyWith<$Res> {
  __$$ReorderItineraryRequestedImplCopyWithImpl(
      _$ReorderItineraryRequestedImpl _value,
      $Res Function(_$ReorderItineraryRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ReorderItineraryRequestedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItineraryItem>,
    ));
  }
}

/// @nodoc

class _$ReorderItineraryRequestedImpl implements _ReorderItineraryRequested {
  const _$ReorderItineraryRequestedImpl(
      {required final List<ItineraryItem> items})
      : _items = items;

  final List<ItineraryItem> _items;
  @override
  List<ItineraryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItineraryEvent.reorderRequested(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderItineraryRequestedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderItineraryRequestedImplCopyWith<_$ReorderItineraryRequestedImpl>
      get copyWith => __$$ReorderItineraryRequestedImplCopyWithImpl<
          _$ReorderItineraryRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(
            String destination, String activity, DateTime date, String time)
        addRequested,
    required TResult Function(ItineraryItem item) updateRequested,
    required TResult Function(int id) deleteRequested,
    required TResult Function(List<ItineraryItem> items) reorderRequested,
  }) {
    return reorderRequested(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult? Function(ItineraryItem item)? updateRequested,
    TResult? Function(int id)? deleteRequested,
    TResult? Function(List<ItineraryItem> items)? reorderRequested,
  }) {
    return reorderRequested?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(
            String destination, String activity, DateTime date, String time)?
        addRequested,
    TResult Function(ItineraryItem item)? updateRequested,
    TResult Function(int id)? deleteRequested,
    TResult Function(List<ItineraryItem> items)? reorderRequested,
    required TResult orElse(),
  }) {
    if (reorderRequested != null) {
      return reorderRequested(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItineraryRequested value) loadRequested,
    required TResult Function(_AddItineraryRequested value) addRequested,
    required TResult Function(_UpdateItineraryRequested value) updateRequested,
    required TResult Function(_DeleteItineraryRequested value) deleteRequested,
    required TResult Function(_ReorderItineraryRequested value)
        reorderRequested,
  }) {
    return reorderRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItineraryRequested value)? loadRequested,
    TResult? Function(_AddItineraryRequested value)? addRequested,
    TResult? Function(_UpdateItineraryRequested value)? updateRequested,
    TResult? Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult? Function(_ReorderItineraryRequested value)? reorderRequested,
  }) {
    return reorderRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItineraryRequested value)? loadRequested,
    TResult Function(_AddItineraryRequested value)? addRequested,
    TResult Function(_UpdateItineraryRequested value)? updateRequested,
    TResult Function(_DeleteItineraryRequested value)? deleteRequested,
    TResult Function(_ReorderItineraryRequested value)? reorderRequested,
    required TResult orElse(),
  }) {
    if (reorderRequested != null) {
      return reorderRequested(this);
    }
    return orElse();
  }
}

abstract class _ReorderItineraryRequested implements ItineraryEvent {
  const factory _ReorderItineraryRequested(
          {required final List<ItineraryItem> items}) =
      _$ReorderItineraryRequestedImpl;

  List<ItineraryItem> get items;

  /// Create a copy of ItineraryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReorderItineraryRequestedImplCopyWith<_$ReorderItineraryRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItineraryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ItineraryItem> items) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItineraryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItineraryItem> items)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryStateCopyWith<$Res> {
  factory $ItineraryStateCopyWith(
          ItineraryState value, $Res Function(ItineraryState) then) =
      _$ItineraryStateCopyWithImpl<$Res, ItineraryState>;
}

/// @nodoc
class _$ItineraryStateCopyWithImpl<$Res, $Val extends ItineraryState>
    implements $ItineraryStateCopyWith<$Res> {
  _$ItineraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryState
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
    extends _$ItineraryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ItineraryState.initial()';
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
    required TResult Function(List<ItineraryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItineraryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItineraryItem> items)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItineraryState {
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
    extends _$ItineraryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ItineraryState.loading()';
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
    required TResult Function(List<ItineraryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItineraryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItineraryItem> items)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItineraryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItineraryItem> items});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ItineraryStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$LoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItineraryItem>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<ItineraryItem> items) : _items = items;

  final List<ItineraryItem> _items;
  @override
  List<ItineraryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItineraryState.loaded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ItineraryState
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
    required TResult Function(List<ItineraryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItineraryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItineraryItem> items)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ItineraryState {
  const factory _Loaded(final List<ItineraryItem> items) = _$LoadedImpl;

  List<ItineraryItem> get items;

  /// Create a copy of ItineraryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$ItineraryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryState
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
    return 'ItineraryState.error(message: $message)';
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

  /// Create a copy of ItineraryState
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
    required TResult Function(List<ItineraryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItineraryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItineraryItem> items)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ItineraryState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ItineraryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
