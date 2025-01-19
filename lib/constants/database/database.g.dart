// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ItineraryItemsTable extends ItineraryItems
    with TableInfo<$ItineraryItemsTable, ItineraryItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItineraryItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _destinationMeta =
      const VerificationMeta('destination');
  @override
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
      'destination', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderIndexMeta =
      const VerificationMeta('orderIndex');
  @override
  late final GeneratedColumn<int> orderIndex = GeneratedColumn<int>(
      'order_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, destination, activity, date, time, orderIndex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'itinerary_items';
  @override
  VerificationContext validateIntegrity(Insertable<ItineraryItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('destination')) {
      context.handle(
          _destinationMeta,
          destination.isAcceptableOrUnknown(
              data['destination']!, _destinationMeta));
    } else if (isInserting) {
      context.missing(_destinationMeta);
    }
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('order_index')) {
      context.handle(
          _orderIndexMeta,
          orderIndex.isAcceptableOrUnknown(
              data['order_index']!, _orderIndexMeta));
    } else if (isInserting) {
      context.missing(_orderIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItineraryItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItineraryItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      destination: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}destination'])!,
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time'])!,
      orderIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_index'])!,
    );
  }

  @override
  $ItineraryItemsTable createAlias(String alias) {
    return $ItineraryItemsTable(attachedDatabase, alias);
  }
}

class ItineraryItem extends DataClass implements Insertable<ItineraryItem> {
  final int id;
  final String destination;
  final String activity;
  final DateTime date;
  final String time;
  final int orderIndex;
  const ItineraryItem(
      {required this.id,
      required this.destination,
      required this.activity,
      required this.date,
      required this.time,
      required this.orderIndex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['destination'] = Variable<String>(destination);
    map['activity'] = Variable<String>(activity);
    map['date'] = Variable<DateTime>(date);
    map['time'] = Variable<String>(time);
    map['order_index'] = Variable<int>(orderIndex);
    return map;
  }

  ItineraryItemsCompanion toCompanion(bool nullToAbsent) {
    return ItineraryItemsCompanion(
      id: Value(id),
      destination: Value(destination),
      activity: Value(activity),
      date: Value(date),
      time: Value(time),
      orderIndex: Value(orderIndex),
    );
  }

  factory ItineraryItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItineraryItem(
      id: serializer.fromJson<int>(json['id']),
      destination: serializer.fromJson<String>(json['destination']),
      activity: serializer.fromJson<String>(json['activity']),
      date: serializer.fromJson<DateTime>(json['date']),
      time: serializer.fromJson<String>(json['time']),
      orderIndex: serializer.fromJson<int>(json['orderIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'destination': serializer.toJson<String>(destination),
      'activity': serializer.toJson<String>(activity),
      'date': serializer.toJson<DateTime>(date),
      'time': serializer.toJson<String>(time),
      'orderIndex': serializer.toJson<int>(orderIndex),
    };
  }

  ItineraryItem copyWith(
          {int? id,
          String? destination,
          String? activity,
          DateTime? date,
          String? time,
          int? orderIndex}) =>
      ItineraryItem(
        id: id ?? this.id,
        destination: destination ?? this.destination,
        activity: activity ?? this.activity,
        date: date ?? this.date,
        time: time ?? this.time,
        orderIndex: orderIndex ?? this.orderIndex,
      );
  ItineraryItem copyWithCompanion(ItineraryItemsCompanion data) {
    return ItineraryItem(
      id: data.id.present ? data.id.value : this.id,
      destination:
          data.destination.present ? data.destination.value : this.destination,
      activity: data.activity.present ? data.activity.value : this.activity,
      date: data.date.present ? data.date.value : this.date,
      time: data.time.present ? data.time.value : this.time,
      orderIndex:
          data.orderIndex.present ? data.orderIndex.value : this.orderIndex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItineraryItem(')
          ..write('id: $id, ')
          ..write('destination: $destination, ')
          ..write('activity: $activity, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('orderIndex: $orderIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, destination, activity, date, time, orderIndex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItineraryItem &&
          other.id == this.id &&
          other.destination == this.destination &&
          other.activity == this.activity &&
          other.date == this.date &&
          other.time == this.time &&
          other.orderIndex == this.orderIndex);
}

class ItineraryItemsCompanion extends UpdateCompanion<ItineraryItem> {
  final Value<int> id;
  final Value<String> destination;
  final Value<String> activity;
  final Value<DateTime> date;
  final Value<String> time;
  final Value<int> orderIndex;
  const ItineraryItemsCompanion({
    this.id = const Value.absent(),
    this.destination = const Value.absent(),
    this.activity = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.orderIndex = const Value.absent(),
  });
  ItineraryItemsCompanion.insert({
    this.id = const Value.absent(),
    required String destination,
    required String activity,
    required DateTime date,
    required String time,
    required int orderIndex,
  })  : destination = Value(destination),
        activity = Value(activity),
        date = Value(date),
        time = Value(time),
        orderIndex = Value(orderIndex);
  static Insertable<ItineraryItem> custom({
    Expression<int>? id,
    Expression<String>? destination,
    Expression<String>? activity,
    Expression<DateTime>? date,
    Expression<String>? time,
    Expression<int>? orderIndex,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (destination != null) 'destination': destination,
      if (activity != null) 'activity': activity,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (orderIndex != null) 'order_index': orderIndex,
    });
  }

  ItineraryItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? destination,
      Value<String>? activity,
      Value<DateTime>? date,
      Value<String>? time,
      Value<int>? orderIndex}) {
    return ItineraryItemsCompanion(
      id: id ?? this.id,
      destination: destination ?? this.destination,
      activity: activity ?? this.activity,
      date: date ?? this.date,
      time: time ?? this.time,
      orderIndex: orderIndex ?? this.orderIndex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (orderIndex.present) {
      map['order_index'] = Variable<int>(orderIndex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItineraryItemsCompanion(')
          ..write('id: $id, ')
          ..write('destination: $destination, ')
          ..write('activity: $activity, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('orderIndex: $orderIndex')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ItineraryItemsTable itineraryItems = $ItineraryItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [itineraryItems];
}

typedef $$ItineraryItemsTableCreateCompanionBuilder = ItineraryItemsCompanion
    Function({
  Value<int> id,
  required String destination,
  required String activity,
  required DateTime date,
  required String time,
  required int orderIndex,
});
typedef $$ItineraryItemsTableUpdateCompanionBuilder = ItineraryItemsCompanion
    Function({
  Value<int> id,
  Value<String> destination,
  Value<String> activity,
  Value<DateTime> date,
  Value<String> time,
  Value<int> orderIndex,
});

class $$ItineraryItemsTableFilterComposer
    extends Composer<_$AppDatabase, $ItineraryItemsTable> {
  $$ItineraryItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get destination => $composableBuilder(
      column: $table.destination, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get activity => $composableBuilder(
      column: $table.activity, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnFilters(column));
}

class $$ItineraryItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ItineraryItemsTable> {
  $$ItineraryItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get destination => $composableBuilder(
      column: $table.destination, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get activity => $composableBuilder(
      column: $table.activity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => ColumnOrderings(column));
}

class $$ItineraryItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItineraryItemsTable> {
  $$ItineraryItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get destination => $composableBuilder(
      column: $table.destination, builder: (column) => column);

  GeneratedColumn<String> get activity =>
      $composableBuilder(column: $table.activity, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<int> get orderIndex => $composableBuilder(
      column: $table.orderIndex, builder: (column) => column);
}

class $$ItineraryItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItineraryItemsTable,
    ItineraryItem,
    $$ItineraryItemsTableFilterComposer,
    $$ItineraryItemsTableOrderingComposer,
    $$ItineraryItemsTableAnnotationComposer,
    $$ItineraryItemsTableCreateCompanionBuilder,
    $$ItineraryItemsTableUpdateCompanionBuilder,
    (
      ItineraryItem,
      BaseReferences<_$AppDatabase, $ItineraryItemsTable, ItineraryItem>
    ),
    ItineraryItem,
    PrefetchHooks Function()> {
  $$ItineraryItemsTableTableManager(
      _$AppDatabase db, $ItineraryItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItineraryItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItineraryItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItineraryItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> destination = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> time = const Value.absent(),
            Value<int> orderIndex = const Value.absent(),
          }) =>
              ItineraryItemsCompanion(
            id: id,
            destination: destination,
            activity: activity,
            date: date,
            time: time,
            orderIndex: orderIndex,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String destination,
            required String activity,
            required DateTime date,
            required String time,
            required int orderIndex,
          }) =>
              ItineraryItemsCompanion.insert(
            id: id,
            destination: destination,
            activity: activity,
            date: date,
            time: time,
            orderIndex: orderIndex,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItineraryItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItineraryItemsTable,
    ItineraryItem,
    $$ItineraryItemsTableFilterComposer,
    $$ItineraryItemsTableOrderingComposer,
    $$ItineraryItemsTableAnnotationComposer,
    $$ItineraryItemsTableCreateCompanionBuilder,
    $$ItineraryItemsTableUpdateCompanionBuilder,
    (
      ItineraryItem,
      BaseReferences<_$AppDatabase, $ItineraryItemsTable, ItineraryItem>
    ),
    ItineraryItem,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ItineraryItemsTableTableManager get itineraryItems =>
      $$ItineraryItemsTableTableManager(_db, _db.itineraryItems);
}
