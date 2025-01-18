import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';

import '../../common/custom_search.dart';
import '../../features/map/map_integration.dart';
import 'bloc/home_bloc.dart';
import 'destination_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MapController mapController;
  final List<LatLng> selectedDestinations = [];

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.loadPopularDestinations()),
      child: HomeView(
        mapController: mapController,
        selectedDestinations: selectedDestinations,
        onDestinationSelected: (LatLng location) {
          setState(() {
            if (selectedDestinations.contains(location)) {
              selectedDestinations.remove(location);
            } else {
              selectedDestinations.add(location);
            }
          });
        },
        onClearDestinations: () {
          setState(() {
            selectedDestinations.clear();
          });
        },
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  final MapController mapController;
  final List<LatLng> selectedDestinations;
  final Function(LatLng) onDestinationSelected;
  final VoidCallback onClearDestinations;

  const HomeView({
    super.key,
    required this.mapController,
    required this.selectedDestinations,
    required this.onDestinationSelected,
    required this.onClearDestinations,
  });

  Future<bool> _handleLocationPermission(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location services are disabled. Please enable them.')));
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location permissions are permanently denied')));
      return false;
    }

    return true;
  }

  Future<void> _getCurrentPosition(BuildContext context) async {
    final hasPermission = await _handleLocationPermission(context);
    if (!hasPermission) return;

    try {
      final Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      mapController.move(
        LatLng(position.latitude, position.longitude),
        15.0,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location updated successfully')),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              SizedBox(
                height: screenHeight,
                child: MapIntegration(
                  mapController: mapController,
                  onLocationSelected: onDestinationSelected,
                  selectedLocations: selectedDestinations,
                ),
              ),

              if (selectedDestinations.isNotEmpty)
                Positioned(
                  top: 120,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${selectedDestinations.length} selected',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              Positioned(
                top: 50,
                left: 16,
                right: 16,
                child: CustomSearchBar(
                  onChanged: (query) {
                    if (query.isNotEmpty) {
                      context.read<HomeBloc>().add(
                        HomeEvent.searchDestinations(query),
                      );
                    } else {
                      context.read<HomeBloc>().add(
                        const HomeEvent.loadPopularDestinations(),
                      );
                    }
                  },
                ),
              ),

              Positioned(
                right: 16,
                bottom: 280,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(
                      heroTag: 'location',
                      onPressed: () => _getCurrentPosition(context),
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.my_location, color: Colors.blue),
                    ),
                    const SizedBox(height: 8),
                    FloatingActionButton(
                      heroTag: 'reset',
                      onPressed: () {
                        mapController.move(
                          const LatLng(40.409264, 49.867092),
                          12.0,
                        );
                      },
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.refresh, color: Colors.green),
                    ),
                    const SizedBox(height: 8),
                    if (selectedDestinations.isNotEmpty)
                      FloatingActionButton(
                        heroTag: 'clear',
                        onPressed: onClearDestinations,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.clear_all, color: Colors.red),
                      ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.3,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, -3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.maybeWhen(
                            searchResults: (_) => 'Search Results',
                            orElse: () => 'Popular Destinations',
                          ),
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: state.maybeWhen(
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            error: (message) => Center(
                              child: Text(
                                'Error: $message',
                                style: const TextStyle(color: Colors.red),
                              ),
                            ),
                            orElse: () => const SizedBox(),
                            loaded: (destinations) => DestinationsList(
                              destinations: destinations,
                              mapController: mapController,
                              selectedDestinations: selectedDestinations,
                              onDestinationSelected: onDestinationSelected,
                            ),
                            searchResults: (destinations) => DestinationsList(
                              destinations: destinations,
                              mapController: mapController,
                              selectedDestinations: selectedDestinations,
                              onDestinationSelected: onDestinationSelected,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: FloatingActionButton.extended(
          onPressed: () {
            if (selectedDestinations.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please select at least one destination')),
              );
              return;
            }
            context.go('/trip-planner', extra: selectedDestinations);
          },
          label: Text(
            selectedDestinations.isEmpty ? 'Select Destinations' : 'Plan Trip (${selectedDestinations.length})',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.redAccent,
          elevation: 4,
        ),
      ),
    );
  }
}