import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/destination_model.dart';

class DestinationService {
  static const String overpassUrl = 'https://overpass-api.de/api/interpreter';

  static Future<List<Destination>> fetchNearbyPlaces(double lat, double lon, double radius) async {
    final query = '''
    [out:json][timeout:25];
    (
      node["tourism"](around:${radius},${lat},${lon});
      way["tourism"](around:${radius},${lat},${lon});
      relation["tourism"](around:${radius},${lat},${lon});
      node["amenity"="restaurant"](around:${radius},${lat},${lon});
      node["amenity"="cafe"](around:${radius},${lat},${lon});
    );
    out body;
    >;
    out skel qt;
    ''';

    try {
      final response = await http.post(
        Uri.parse(overpassUrl),
        body: query,
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final elements = data['elements'] as List;

        return elements.map((element) {
          final tags = element['tags'] ?? {};
          final name = tags['name'] ?? 'Unknown Place';
          final description = tags['description'] ?? tags['tourism'] ?? 'No description';

          return Destination(
            id: element['id'].toString(),
            name: name,
            description: description,
            imageUrl: 'https://via.placeholder.com/150',
            latitude: element['lat'] ?? lat,
            longitude: element['lon'] ?? lon,
            rating: 4.0,
            distance: '${calculateDistance(lat, lon, element['lat'], element['lon']).toStringAsFixed(1)} km',
          );
        }).toList();
      }
      throw Exception('Failed to fetch places');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  static double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const R = 6371;
    final dLat = _toRadians(lat2 - lat1);
    final dLon = _toRadians(lon2 - lon1);

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(lat1)) * cos(_toRadians(lat2)) *
            sin(dLon / 2) * sin(dLon / 2);

    final c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return R * c;
  }

  static double _toRadians(double degree) {
    return degree * pi / 180;
  }
}