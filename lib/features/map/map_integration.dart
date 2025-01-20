import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapIntegration extends StatelessWidget {
  final MapController mapController;
  final Function(LatLng) onLocationSelected;
  final List<LatLng> selectedLocations;
  final Position? currentPosition;
  final bool showCircle;
  final bool showPolyline;
  final List<Marker> additionalMarkers;

  const MapIntegration({
    Key? key,
    required this.mapController,
    required this.onLocationSelected,
    required this.selectedLocations,
    this.currentPosition,
    this.showCircle = true,
    this.showPolyline = true,
    this.additionalMarkers = const [],
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

  Marker _buildLocationMarker(LatLng position, {
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