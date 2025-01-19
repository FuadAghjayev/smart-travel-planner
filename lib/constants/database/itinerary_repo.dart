
import 'database.dart';

class ItineraryRepository {
  final AppDatabase _db;

  ItineraryRepository(this._db);

  Future<List<ItineraryItem>> getAllItems() async {
    return await _db.getAllItineraryItems();
  }

  Future<int> addItem(String destination, String activity, DateTime date, String time) async {
    final item = ItineraryItemsCompanion.insert(
      destination: destination,
      activity: activity,
      date: date,
      time: time,
      orderIndex: await _db.getAllItineraryItems().then((items) => items.length),
    );
    return await _db.addItineraryItem(item);
  }

  Future<bool> updateItem(ItineraryItem item) async {
    return await _db.updateItineraryItem(item);
  }

  Future<int> deleteItem(int id) async {
    return await _db.deleteItineraryItem(id);
  }

  Future<void> reorderItems(List<ItineraryItem> items) async {
    await _db.reorderItems(items);
  }
}