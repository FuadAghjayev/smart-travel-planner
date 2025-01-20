import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import '../../models/destination_model.dart';

class MapIntegration extends StatelessWidget {
  final MapController mapController;
  final Function(LatLng) onLocationSelected;
  final List<LatLng> selectedLocations;
  final Position? currentPosition;
  final bool showCircle;
  final bool showPolyline;
  final List<Marker> additionalMarkers;
  final List<Destination> nearbyPlaces;
  final Function(Destination)? onPlaceSelected;

  const MapIntegration({
    Key? key,
    required this.mapController,
    required this.onLocationSelected,
    required this.selectedLocations,
    this.currentPosition,
    this.showCircle = true,
    this.showPolyline = true,
    this.additionalMarkers = const [],
    this.nearbyPlaces = const [],
    this.onPlaceSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        initialCenter: selectedLocations.isNotEmpty
            ? selectedLocations.first
            : const LatLng(40.37767, 49.89201),
        minZoom: 10.0,
        onTap: (_, point) => onLocationSelected(point),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        if (showPolyline && selectedLocations.length >= 2)
          PolylineLayer(
            polylines: [
              Polyline(
                points: selectedLocations,
                color: Colors.blue,
                strokeWidth: 3.0,
              ),
            ],
          ),
        MarkerLayer(
          markers: [
            ...selectedLocations.asMap().entries.map(
                  (entry) => _buildLocationMarker(
                entry.value,
                label: 'Point ${entry.key + 1}',
                color: Colors.red,
              ),
            ),
            if (currentPosition != null)
              _buildLocationMarker(
                LatLng(
                  currentPosition!.latitude,
                  currentPosition!.longitude,
                ),
                label: '',
                color: Colors.blue,
              ),
            ...nearbyPlaces.map((place) => createPlaceMarker(
              position: LatLng(place.latitude, place.longitude),
              label: place.name,
              icon: _getIconForPlace(place),
              color: Colors.green,
              onTap: () {
                onPlaceSelected?.call(place);
                _showPlaceDetails(context, place);
              },
            )),
            ...additionalMarkers,
          ],
        ),
        if (showCircle && currentPosition != null)
          CircleLayer(
            circles: [
              CircleMarker(
                point: LatLng(
                  currentPosition!.latitude,
                  currentPosition!.longitude,
                ),
                radius: 50,
                useRadiusInMeter: true,
                color: Colors.blue.withOpacity(0.2),
                borderColor: Colors.blue,
                borderStrokeWidth: 2,
              ),
            ],
          ),
      ],
    );
  }

  IconData _getIconForPlace(Destination place) {
    final description = place.description.toLowerCase();
    if (description.contains('restaurant')) {
      return Icons.restaurant;
    } else if (description.contains('cafe')) {
      return Icons.local_cafe;
    } else if (description.contains('hotel')) {
      return Icons.hotel;
    } else if (description.contains('museum')) {
      return Icons.museum;
    }
    return Icons.place;
  }

  void _showPlaceDetails(BuildContext context, Destination place) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    place.name.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(place.description.toUpperCase()),
            const SizedBox(height: 8),
            Text('Distance: ${place.distance}'),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(' ${place.rating}'),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  onPlaceSelected?.call(place);
                  Navigator.pop(context);
                },
                child: const Text('Add to Route'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Marker _buildLocationMarker(
      LatLng position, {
        required String label,
        required Color color,
      }) {
    return Marker(
      point: position,
      width: 80,
      height: 80,
      child: Column(
        children: [
          Icon(
            Icons.location_on,
            color: color,
            size: 30,
          ),
          if (label.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.8),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }

  static Marker createPlaceMarker({
    required LatLng position,
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Marker(
      point: position,
      width: 80,
      height: 80,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
              size: 30,
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.8),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}