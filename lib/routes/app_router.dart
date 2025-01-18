import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import '../screens/home/home_page.dart';
import '../screens/itinerary/itinerary_page.dart';
import '../screens/place_details/place_details_page.dart';
import '../screens/trip_planer/trip_planer_page.dart';

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

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'root');

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutePaths.home,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutePaths.home,
        name: RouteNames.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'trip-planner',
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
            path: 'place/:placeId',
            name: RouteNames.placeDetails,
            builder: (context, state) {
              final placeId = state.pathParameters['placeId']!;
              return PlaceDetailsPage(placeId: placeId);
            },
          ),
          GoRoute(
            path: 'itinerary',
            name: RouteNames.itinerary,
            builder: (context, state) =>  ItineraryPage(),
          ),
        ],
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

  static void goToPlaceDetails(BuildContext context, String placeId) {
    context.goNamed(
      RouteNames.placeDetails,
      pathParameters: {'placeId': placeId},
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

  static void pushPlaceDetails(BuildContext context, String placeId) {
    context.pushNamed(
      RouteNames.placeDetails,
      pathParameters: {'placeId': placeId},
    );
  }

  static void pushItinerary(BuildContext context) {
    context.pushNamed(RouteNames.itinerary);
  }
}