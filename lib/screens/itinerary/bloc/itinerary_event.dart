part of 'itinerary_bloc.dart';

@freezed
class ItineraryEvent with _$ItineraryEvent {
  const factory ItineraryEvent.loadRequested() = _LoadItineraryRequested;

  const factory ItineraryEvent.addRequested({
    required String destination,
    required String activity,
    required DateTime date,
    required String time,
  }) = _AddItineraryRequested;

  const factory ItineraryEvent.updateRequested({
    required ItineraryItem item,
  }) = _UpdateItineraryRequested;

  const factory ItineraryEvent.deleteRequested({
    required int id,
  }) = _DeleteItineraryRequested;

  const factory ItineraryEvent.reorderRequested({
    required List<ItineraryItem> items,
  }) = _ReorderItineraryRequested;
}