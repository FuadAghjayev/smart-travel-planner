import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/database/database.dart';
import '../../../constants/database/itinerary_repo.dart';


part 'itinerary_event.dart';
part 'itinerary_state.dart';
part 'itinerary_bloc.freezed.dart';

class ItineraryBloc extends Bloc<ItineraryEvent, ItineraryState> {
  final ItineraryRepository _repository;

  ItineraryBloc({required ItineraryRepository repository})
      : _repository = repository,
        super(const ItineraryState.initial()) {
    on<_LoadItineraryRequested>(_onLoadItinerary);
    on<_AddItineraryRequested>(_onAddItinerary);
    on<_UpdateItineraryRequested>(_onUpdateItinerary);
    on<_DeleteItineraryRequested>(_onDeleteItinerary);
    on<_ReorderItineraryRequested>(_onReorderItinerary);
  }

  Future<void> _onLoadItinerary(
      _LoadItineraryRequested event,
      Emitter<ItineraryState> emit,
      ) async {
    emit(const ItineraryState.loading());
    try {
      final items = await _repository.getAllItems();
      emit(ItineraryState.loaded(items));
    } catch (e) {
      emit(ItineraryState.error('Failed to load items: ${e.toString()}'));
    }
  }

  Future<void> _onAddItinerary(
      _AddItineraryRequested event,
      Emitter<ItineraryState> emit,
      ) async {
    try {
      await _repository.addItem(
        event.destination,
        event.activity,
        event.date,
        event.time,
      );
      add(const ItineraryEvent.loadRequested());
    } catch (e) {
      emit(ItineraryState.error('Failed to add item: ${e.toString()}'));
    }
  }

  Future<void> _onUpdateItinerary(
      _UpdateItineraryRequested event,
      Emitter<ItineraryState> emit,
      ) async {
    try {
      await _repository.updateItem(event.item);
      add(const ItineraryEvent.loadRequested());
    } catch (e) {
      emit(ItineraryState.error('Failed to update item: ${e.toString()}'));
    }
  }

  Future<void> _onDeleteItinerary(
      _DeleteItineraryRequested event,
      Emitter<ItineraryState> emit,
      ) async {
    try {
      await _repository.deleteItem(event.id);
      add(const ItineraryEvent.loadRequested());
    } catch (e) {
      emit(ItineraryState.error('Failed to delete item: ${e.toString()}'));
    }
  }

  Future<void> _onReorderItinerary(
      _ReorderItineraryRequested event,
      Emitter<ItineraryState> emit,
      ) async {
    try {
      await _repository.reorderItems(event.items);
      emit(ItineraryState.loaded(event.items));
    } catch (e) {
      emit(ItineraryState.error('Failed to reorder items: ${e.toString()}'));
      add(const ItineraryEvent.loadRequested());
    }
  }
}
