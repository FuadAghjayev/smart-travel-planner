part of 'home_bloc.dart';


@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.searchDestinations(String query) = _SearchDestinations;
  const factory HomeEvent.loadPopularDestinations() = _LoadPopularDestinations;
  const factory HomeEvent.selectDestination(Destination destination) = _SelectDestination;
}