import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/destination.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_SearchDestinations>(_onSearchDestinations);
    on<_LoadPopularDestinations>(_onLoadPopularDestinations);
    on<_SelectDestination>(_onSelectDestination);
  }

  Future<void> _onSearchDestinations(
      _SearchDestinations event,
      Emitter<HomeState> emit,
      ) async {
    emit(const HomeState.loading());
    try {
      // TODO: Implement actual API call
      final destinations = await Future.delayed(
        const Duration(seconds: 1),
            () => Destination.sampleDestinations.where(
              (d) => d.name.toLowerCase().contains(event.query.toLowerCase()),
        ).toList(),
      );
      emit(HomeState.searchResults(destinations));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }

  Future<void> _onLoadPopularDestinations(
      _LoadPopularDestinations event,
      Emitter<HomeState> emit,
      ) async {
    emit(const HomeState.loading());
    try {
      // TODO: Implement actual API call
      final destinations = await Future.delayed(
        const Duration(seconds: 1),
            () => Destination.sampleDestinations,
      );
      emit(HomeState.loaded(destinations));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }

  Future<void> _onSelectDestination(
      _SelectDestination event,
      Emitter<HomeState> emit,
      ) async {
    if (state is! _Loaded && state is! _SearchResults) return;

    final currentDestinations = state is _Loaded
        ? (state as _Loaded).destinations
        : (state as _SearchResults).destinations;

    emit(HomeState.destinationSelected(
      currentDestinations,
      event.destination,
    ));
  }
}
