import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/place.dart';
import '../trip_planer/bloc/trip_planner_bloc.dart';
import '../trip_planer/bloc/trip_planner_event.dart';
import 'package:latlong2/latlong.dart';


class PlaceDetailsPage extends StatelessWidget {
  final Place place;

  const PlaceDetailsPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_location),
            onPressed: () {
              context.read<TripPlannerBloc>().add(
                TripPlannerEvent.addDestination(
                  point: LatLng(place.latitude, place.longitude),
                  name: place.name,
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${place.name} added to trip plan'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            tooltip: 'Add to Trip Plan',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (place.imageUrl != null)
              Image.network(
                place.imageUrl!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, size: 50),
                  );
                },
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.category, color: Colors.blue[700]),
                      const SizedBox(width: 8),
                      Text(
                        place.category,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue[700]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          place.address,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (place.openingHours != null) ...[
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.blue[700]),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            place.openingHours!,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],

                  if (place.phoneNumber != null) ...[
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.blue[700]),
                        const SizedBox(width: 8),
                        Text(
                          place.phoneNumber!,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                  if (place.description != null) ...[
                    const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      place.description!,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                  ],
                  if (place.features != null && place.features!.isNotEmpty) ...[
                    const Text(
                      'Special Features',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: place.features!.map((feature) {
                        return Chip(
                          label: Text(feature),
                          backgroundColor: Colors.blue[100],
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                },
                icon: const Icon(Icons.directions),
                label: const Text('Route Plan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}