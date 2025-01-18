import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Place {
  final String id;
  final String name;
  final String description;
  final double rating;
  final String address;
  final String openingHours;
  final double latitude;
  final double longitude;
  final String imageUrl;
  final String distance;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.address,
    required this.openingHours,
    required this.latitude,
    required this.longitude,
    required this.imageUrl,
    required this.distance,
  });
}

class PlaceDetailsPage extends StatelessWidget {
  final Place place;
  final Function(LatLng) onAddToTrip;

  const PlaceDetailsPage({
    Key? key,
    required this.place,
    required this.onAddToTrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(place.name),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About this place',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow(
                            Icons.location_on,
                            place.address,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(
                            Icons.access_time,
                            place.openingHours,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(
                            Icons.star,
                            '${place.rating} / 5',
                            iconColor: Colors.amber,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(
                            Icons.navigation,
                            place.distance,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Description Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            place.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton.extended(
            onPressed: () {
              onAddToTrip(LatLng(place.latitude, place.longitude));
              Navigator.pop(context);
            },
            label: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(width: 8),
                Text('Add to Trip'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {Color? iconColor}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: iconColor ?? Colors.grey[600],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}