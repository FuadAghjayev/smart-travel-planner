import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel_planner/routes/app_router.dart';
import 'package:smart_travel_planner/screens/home/bloc/home_bloc.dart';
import 'package:smart_travel_planner/screens/trip_planer/bloc/trip_planner_bloc.dart';
import 'package:smart_travel_planner/services/destination_services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc()..add(const HomeEvent.loadPopularDestinations()),
        ),
        BlocProvider<TripPlannerBloc>(
          create: (context) => TripPlannerBloc(
            destinationService: DestinationService(),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Smart Travel Planner',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}