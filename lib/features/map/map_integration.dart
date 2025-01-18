import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapIntegration extends StatelessWidget {
  final MapController mapController;
  final Function(LatLng) onLocationSelected;

  const MapIntegration({
    super.key,
    required this.mapController,
    required this.onLocationSelected,
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
          ],
        ),
        // İsteğe bağlı: Polyline katmanı (rotalar için)
        PolylineLayer(
          polylines: [
            // Örnek polyline - rota çizimi için
            Polyline(
              points: const [
                LatLng(40.409264, 49.867092),
                LatLng(40.419264, 49.877092),
              ],
              color: Colors.blue,
              strokeWidth: 3.0,
            ),
          ],
        ),
        // İsteğe bağlı: Circle katmanı (belirli bir alanı vurgulamak için)
        CircleLayer(
          circles: [
            // Örnek circle - belirli bir alanı vurgulamak için
            CircleMarker(
              point: const LatLng(40.409264, 49.867092),
              radius: 1000, // metre cinsinden yarıçap
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
}

// İsteğe bağlı: Özel marker widget'ı
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