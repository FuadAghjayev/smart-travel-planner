import 'package:flutter/material.dart';

class TripPlannerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trip Planner')),
      body: const Center(
        child: Text('Map and Nearby Places will be here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to start a new trip
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}