import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class ItineraryItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get destination => text()();
  TextColumn get activity => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get time => text()();
  IntColumn get orderIndex => integer()();
}

@DriftDatabase(tables: [ItineraryItems])
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase._internal();

  AppDatabase._internal() : super(_openConnection());
  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;

  Future<List<ItineraryItem>> getAllItineraryItems() async {
    return (select(itineraryItems)
      ..orderBy([(t) => OrderingTerm(expression: t.orderIndex)]))
        .get();
  }

  Future<int> addItineraryItem(ItineraryItemsCompanion item) async {
    return into(itineraryItems).insert(item);
  }

  Future<bool> updateItineraryItem(ItineraryItem item) async {
    return update(itineraryItems).replace(item);
  }

  Future<int> deleteItineraryItem(int id) async {
    return (delete(itineraryItems)..where((t) => t.id.equals(id))).go();
  }

  Future<void> reorderItems(List<ItineraryItem> items) async {
    await batch((batch) {
      for (var i = 0; i < items.length; i++) {
        batch.update(
          itineraryItems,
          ItineraryItemsCompanion(orderIndex: Value(i)),
          where: (t) => t.id.equals(items[i].id),
        );
      }
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'itinerary.sqlite'));
    return NativeDatabase(file);
  });
}