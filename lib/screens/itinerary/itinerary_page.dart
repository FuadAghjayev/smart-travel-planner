import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/database/database.dart';
import '../../constants/database/itinerary_repo.dart';
import 'bloc/itinerary_bloc.dart';
import 'itinerary_item_dialog.dart';

class ItineraryPage extends StatelessWidget {
  const ItineraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItineraryBloc(
        repository: context.read<ItineraryRepository>(),
      )..add(const ItineraryEvent.loadRequested()),
      child: const ItineraryView(),
    );
  }
}

class ItineraryView extends StatelessWidget {
  const ItineraryView({Key? key}) : super(key: key);

  Future<void> _addNewItem(BuildContext context) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const ItineraryItemDialog(),
    );

    if (result != null) {
      if (!context.mounted) return;
      context.read<ItineraryBloc>().add(ItineraryEvent.addRequested(
        destination: result['destination'],
        activity: result['activity'],
        date: result['date'],
        time: '${result['time'].hour.toString().padLeft(2, '0')}:${result['time'].minute.toString().padLeft(2, '0')}',
      ));
    }
  }

  Future<void> _editItem(BuildContext context, ItineraryItem item) async {
    final timeParts = item.time.split(':');
    final timeOfDay = TimeOfDay(
      hour: int.parse(timeParts[0]),
      minute: int.parse(timeParts[1]),
    );

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => ItineraryItemDialog(
        initialDestination: item.destination,
        initialActivity: item.activity,
        initialDate: item.date,
        initialTime: timeOfDay,
      ),
    );

    if (result != null) {
      if (!context.mounted) return;
      final updatedItem = ItineraryItem(
        id: item.id,
        destination: result['destination'],
        activity: result['activity'],
        date: result['date'],
        time: '${result['time'].hour.toString().padLeft(2, '0')}:${result['time'].minute.toString().padLeft(2, '0')}',
        orderIndex: item.orderIndex,
      );
      context.read<ItineraryBloc>().add(ItineraryEvent.updateRequested(item: updatedItem));
    }
  }

  Future<void> _deleteItem(BuildContext context, ItineraryItem item) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Item'),
        content: const Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      if (!context.mounted) return;
      context.read<ItineraryBloc>().add(ItineraryEvent.deleteRequested(id: item.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Itinerary'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _addNewItem(context),
          ),
        ],
      ),
      body: BlocConsumer<ItineraryBloc, ItineraryState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (_) => const SizedBox(),
            loaded: (items) {
              if (items.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.map_outlined, size: 64, color: Colors.grey),
                      const SizedBox(height: 16),
                      Text(
                        'No itinerary items yet',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton.icon(
                        onPressed: () => _addNewItem(context),
                        icon: const Icon(Icons.add),
                        label: const Text('Add Your First Item'),
                      ),
                    ],
                  ),
                );
              }

              return ReorderableListView.builder(
                itemCount: items.length,
                onReorder: (oldIndex, newIndex) {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final reorderedItems = List<ItineraryItem>.from(items);
                  final item = reorderedItems.removeAt(oldIndex);
                  reorderedItems.insert(newIndex, item);

                  context.read<ItineraryBloc>().add(
                    ItineraryEvent.reorderRequested(items: reorderedItems),
                  );
                },
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Dismissible(
                    key: ValueKey(item.id),
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 16),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    direction: DismissDirection.endToStart,
                    onDismissed: (_) => _deleteItem(context, item),
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: ListTile(
                        leading: const Icon(Icons.place),
                        title: Text(item.destination),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.activity),
                            Text(
                              '${item.date.toString().split(' ')[0]} - ${item.time}',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () => _editItem(context, item),
                            ),
                            ReorderableDragStartListener(
                              index: index,
                              child: const Icon(Icons.drag_handle),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}