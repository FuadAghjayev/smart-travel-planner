import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/destination_model.dart';
import 'package:geolocator/geolocator.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_SearchDestinations>(_onSearchDestinations);
    on<_LoadPopularDestinations>(_onLoadPopularDestinations);
    on<_SelectDestination>(_onSelectDestination);
  }

  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> _onSearchDestinations(
      _SearchDestinations event,
      Emitter<HomeState> emit,
      ) async {
    emit(const HomeState.loading());
    try {
      final position = await _getCurrentLocation();
      final destinations = await Destination.fetchNearbyPlacesWithRetry(
        position.latitude,
        position.longitude,
        radius: 5000,
      );
      final filteredDestinations = destinations
          .where((d) => d.name.toLowerCase().contains(event.query.toLowerCase()))
          .toList();

      emit(HomeState.searchResults(filteredDestinations));
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
      final position = await _getCurrentLocation();
      final destinations = await Destination.fetchNearbyPlacesWithRetry(
        position.latitude,
        position.longitude,
        radius: 5000,
      );
      destinations.sort((a, b) => b.rating.compareTo(a.rating));
      final popularDestinations = destinations.take(5).toList();

      emit(HomeState.loaded(popularDestinations));
    } catch (e) {
      final sampleDestinations = Destination.sampleDestinations;
      emit(HomeState.loaded(sampleDestinations));
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