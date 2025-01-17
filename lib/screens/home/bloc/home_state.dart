part of 'home_bloc.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(List<Destination> destinations) = _Loaded;
  const factory HomeState.searchResults(List<Destination> destinations) = _SearchResults;
  const factory HomeState.destinationSelected(
      List<Destination> destinations,
      Destination selectedDestination,
      ) = _DestinationSelected;
  const factory HomeState.error(String message) = _Error;
}