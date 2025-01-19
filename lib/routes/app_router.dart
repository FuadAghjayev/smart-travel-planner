import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../screens/home/home_page.dart';
import '../screens/itinerary/itinerary_page.dart';
import '../screens/place_details/place_details_page.dart';
import '../screens/trip_planer/trip_planer_page.dart';
import '../../models/place.dart';

class RouteNames {
  static const String home = 'home';
  static const String tripPlanner = 'tripPlanner';
  static const String placeDetails = 'placeDetails';
  static const String itinerary = 'itinerary';
}

class RoutePaths {
  static const String home = '/';
  static const String tripPlanner = '/trip-planner';
  static const String placeDetails = '/place/:placeId';
  static const String itinerary = '/itinerary';
}

class ScaffoldWithBottomBar extends StatefulWidget {
  const ScaffoldWithBottomBar({
    Key? key,
    required this.child,
    required this.location,
  }) : super(key: key);

  final Widget child;
  final String location;

  @override
  State<ScaffoldWithBottomBar> createState() => _ScaffoldWithBottomBarState();
}

class _ScaffoldWithBottomBarState extends State<ScaffoldWithBottomBar> {
  int _getCurrentIndex(String location) {
    if (location.startsWith(RoutePaths.tripPlanner)) return 1;
    if (location.startsWith(RoutePaths.itinerary)) return 2;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _getCurrentIndex(widget.location),
        onTap: (index) {
          switch (index) {
            case 0:
              context.go(RoutePaths.home);
              break;
            case 1:
              context.go(RoutePaths.tripPlanner);
              break;
            case 2:
              context.go(RoutePaths.itinerary);
              break;
          }
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.map),
            title: const Text('Trip Planner'),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.calendar_today),
            title: const Text('Itinerary program'),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutePaths.home,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldWithBottomBar(
            child: child,
            location: state.uri.toString(),
          );
        },
        routes: [
          GoRoute(
            path: RoutePaths.home,
            name: RouteNames.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: RoutePaths.tripPlanner,
            name: RouteNames.tripPlanner,
            builder: (context, state) {
              List<LatLng>? selectedDestinations;
              try {
                selectedDestinations = (state.extra as List?)?.cast<LatLng>();
              } catch (e) {
                selectedDestinations = [];
              }
              return TripPlannerPage(
                selectedDestinations: selectedDestinations ?? [],
              );
            },
          ),
          GoRoute(
            path: RoutePaths.itinerary,
            name: RouteNames.itinerary,
            builder: (context, state) => ItineraryPage(),
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.placeDetails,
        name: RouteNames.placeDetails,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final place = state.extra as Place;
          return PlaceDetailsPage(place: place);
        },
      ),
    ],
    observers: [RouteObserver()],
    redirect: (context, state) {
      return null;
    },
  );

  static void goToHome(BuildContext context) {
    context.goNamed(RouteNames.home);
  }

  static void goToTripPlanner(BuildContext context, {List<LatLng>? selectedDestinations}) {
    context.goNamed(
      RouteNames.tripPlanner,
      extra: selectedDestinations,
    );
  }

  static void goToPlaceDetails(BuildContext context, Place place) {
    context.goNamed(
      RouteNames.placeDetails,
      pathParameters: {'placeId': place.id},
      extra: place,
    );
  }

  static void goToItinerary(BuildContext context) {
    context.goNamed(RouteNames.itinerary);
  }

  static void pushTripPlanner(BuildContext context, {List<LatLng>? selectedDestinations}) {
    context.pushNamed(
      RouteNames.tripPlanner,
      extra: selectedDestinations,
    );
  }

  static void pushPlaceDetails(BuildContext context, Place place) {
    context.pushNamed(
      RouteNames.placeDetails,
      pathParameters: {'placeId': place.id},
      extra: place,
    );
  }

  static void pushItinerary(BuildContext context) {
    context.pushNamed(RouteNames.itinerary);
  }
}