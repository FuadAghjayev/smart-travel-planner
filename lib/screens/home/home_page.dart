import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smart_travel_planner/screens/home/search_bar.dart';

import '../../features/map/map_integration.dart';
import 'bloc/home_bloc.dart';
import 'destinations_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MapController mapController;

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
      child: HomeView(mapController: mapController),
    );
  }
}

class HomeView extends StatelessWidget {
  final MapController mapController;

  const HomeView({
    super.key,
    required this.mapController,
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
      appBar: AppBar(
        title: const Text(
          'Smart Travel Planner',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.6,
                      child: MapIntegration(
                        mapController: mapController,
                        onLocationSelected: (location) {
                        },
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 16,
                      right: 16,
                      child:  CustomSearchBar(
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
                      bottom: 16,
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
                          FloatingActionButton(
                            heroTag: 'route',
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Recalculating route...')),
                              );
                            },
                            backgroundColor: Colors.white,
                            child: const Icon(Icons.route, color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, -3),
                      ),
                    ],
                  ),
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
                      state.maybeWhen(
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
                        ),
                        searchResults: (destinations) => DestinationsList(
                          destinations: destinations,
                          mapController: mapController,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/trip-planner'),
        label: const Text('Plan a Trip'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.redAccent,
        elevation: 4,
      ),
    );
  }
}


