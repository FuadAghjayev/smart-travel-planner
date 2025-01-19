import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import '../../services/destination_services.dart';

class MapIntegration extends StatefulWidget {
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
  State<MapIntegration> createState() => _MapIntegrationState();
}

class _MapIntegrationState extends State<MapIntegration> {
  LatLng? currentLocation;

  String _getDistance(LatLng point1, LatLng point2) {
    double distance = DestinationService.calculateDistance(
      point1.latitude,
      point1.longitude,
      point2.latitude,
      point2.longitude,
    );

    if (distance < 1) {
      return '${(distance * 1000).toStringAsFixed(0)} m';
    }
    return '${distance.toStringAsFixed(1)} km';
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: widget.mapController,
      options: MapOptions(
        initialCenter: const LatLng(40.409264, 49.867092),
        initialZoom: 12.0,
        minZoom: 3.0,
        maxZoom: 18.0,
        onTap: (tapPosition, point) => widget.onLocationSelected(point),
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
        CurrentLocationLayer(
          followOnLocationUpdate: FollowOnLocationUpdate.always,
          turnOnHeadingUpdate: TurnOnHeadingUpdate.never,
          style: LocationMarkerStyle(
            marker: const DefaultLocationMarker(
              child: Icon(
                Icons.navigation,
                color: Colors.white,
              ),
            ),
            markerSize: const Size(40, 40),
            markerDirection: MarkerDirection.heading,
          ),
        ),
        MarkerLayer(
          markers: [
            if (currentLocation != null)
              Marker(
                point: currentLocation!,
                width: 80,
                height: 80,
                child: const Icon(
                  Icons.my_location,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
            ...widget.selectedLocations.asMap().entries.map((entry) {
              final index = entry.key;
              final location = entry.value;

              String? distance;
              if (currentLocation != null) {
                distance = _getDistance(currentLocation!, location);
              }

              return Marker(
                point: location,
                width: 110,
                height: 100,
                child: Column(
                  children: [
                    CustomMarker(
                      label: 'Stop ${index + 1}',
                      color: _getMarkerColor(index),
                    ),
                    if (distance != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          distance,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
        if (widget.showPolyline && widget.selectedLocations.isNotEmpty)
          PolylineLayer(
            polylines: [
              Polyline(
                points: [
                  if (currentLocation != null) currentLocation!,
                  ...widget.selectedLocations,
                ],
                color: Colors.blue,
                strokeWidth: 3.0,
              ),
            ],
          ),
        if (widget.showCircle)
          CircleLayer(
            circles: [
              if (currentLocation != null)
                CircleMarker(
                  point: currentLocation!,
                  radius: 1000,
                  useRadiusInMeter: true,
                  color: Colors.blue.withOpacity(0.2),
                  borderColor: Colors.blue,
                  borderStrokeWidth: 2,
                ),
              ...widget.selectedLocations.map((location) => CircleMarker(
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