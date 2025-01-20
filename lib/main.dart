import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel_planner/routes/app_router.dart';
import 'package:smart_travel_planner/screens/home/bloc/home_bloc.dart';
import 'package:smart_travel_planner/screens/trip_planer/bloc/trip_planner_bloc.dart';
import 'package:smart_travel_planner/screens/itinerary/bloc/itinerary_bloc.dart';
import 'package:smart_travel_planner/services/destination_services.dart';
import 'package:smart_travel_planner/constants/database/database.dart';
import 'package:smart_travel_planner/constants/database/itinerary_repo.dart';

void main() {
  final database = AppDatabase();
  runApp(MyApp(database: database));
}

class MyApp extends StatelessWidget {
  final AppDatabase database;

  const MyApp({
    super.key,
    required this.database,
  });

  @override
  Widget build(BuildContext context) {
    final itineraryRepository = ItineraryRepository(database);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: database,
        ),
        RepositoryProvider.value(
          value: itineraryRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc()
              ..add(const HomeEvent.loadPopularDestinations()),
          ),
          BlocProvider<TripPlannerBloc>(
            create: (context) => TripPlannerBloc(
              destinationService: DestinationService(),
            ),
          ),
          BlocProvider<ItineraryBloc>(
            create: (context) => ItineraryBloc(
              repository: context.read<ItineraryRepository>(),
            )..add(const ItineraryEvent.loadRequested()),
          ),
        ],
        child: MaterialApp.router(
          title: 'Smart Travel Planner',
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.light(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}