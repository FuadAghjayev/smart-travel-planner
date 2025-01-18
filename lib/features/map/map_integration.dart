import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapIntegration extends StatelessWidget {
  final MapController mapController;
  final Function(LatLng) onLocationSelected;
  final List<LatLng> selectedLocations;
  final bool showCircle;
  final bool showPolyline;

  const MapIntegration({
    super.key,
    required this.mapController,
    required this.onLocationSelected,
    this.selectedLocations = const [],
    this.showCircle = true,
    this.showPolyline = true,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        initialCenter: const LatLng(40.409264, 49.867092),
        initialZoom: 12.0,
        minZoom: 3.0,
        maxZoom: 18.0,
        onTap: (tapPosition, point) => onLocationSelected(point),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
          tileBuilder: (context, widget, tile) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 0.5,
                ),
              ),
              child: widget,
            );
          },
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: const LatLng(40.409264, 49.867092),
              width: 80,
              height: 80,
              child: const Icon(
                Icons.location_on,
                color: Colors.red,
                size: 40,
              ),
            ),
            ...selectedLocations.asMap().entries.map((entry) {
              final index = entry.key;
              final location = entry.value;
              return Marker(
                point: location,
                width: 110,
                height: 80,
                child: CustomMarker(
                  label: 'Stop ${index + 1}',
                  color: _getMarkerColor(index),
                ),
              );
            }).toList(),
          ],
        ),

        if (showPolyline && selectedLocations.isNotEmpty)
          PolylineLayer(
            polylines: [
              Polyline(
                points: [
                  const LatLng(40.409264, 49.867092),
                  ...selectedLocations,
                ],
                color: Colors.blue,
                strokeWidth: 3.0,
              ),
            ],
          ),
        if (showCircle)
          CircleLayer(
            circles: [
              CircleMarker(
                point: const LatLng(40.409264, 49.867092),
                radius: 1000,
                useRadiusInMeter: true,
                color: Colors.blue.withOpacity(0.2),
                borderColor: Colors.blue,
                borderStrokeWidth: 2,
              ),
              ...selectedLocations.map((location) => CircleMarker(
                point: location,
                radius: 500,
                useRadiusInMeter: true,
                color: Colors.green.withOpacity(0.1),
                borderColor: Colors.green,
                borderStrokeWidth: 1,
              )),
            ],
          ),
      ],
    );
  }

  Color _getMarkerColor(int index) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.pink,
    ];
    return colors[index % colors.length];
  }
}

class CustomMarker extends StatelessWidget {
  final String label;
  final Color color;

  const CustomMarker({
    super.key,
    required this.label,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
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
        Icon(
          Icons.location_on,
          color: color,
          size: 30,
        ),
      ],
    );
  }
}