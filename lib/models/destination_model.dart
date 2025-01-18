import 'dart:math';
import '../services/api_service.dart';

class Destination {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double latitude;
  final double longitude;
  final double rating;
  final String distance;

  Destination({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.distance,
  });

  static List<Destination> get sampleDestinations => [
    Destination(
      id: '1',
      name: 'Maiden Tower',
      description: 'Historic tower in the Old City of Baku',
      imageUrl: '',
      latitude: 40.3657,
      longitude: 49.8372,
      rating: 4.8,
      distance: '1.2 km',
    ),
  ];

  static Destination fromOSMElement(Map<String, dynamic> element, double userLat, double userLon) {
    final tags = element['tags'] ?? {};
    final name = tags['name'] ?? 'Unknown Place';
    final description = tags['description'] ?? tags['tourism'] ?? 'No description';
    final elementLat = element['lat'] ?? userLat;
    final elementLon = element['lon'] ?? userLon;

    return Destination(
      id: element['id'].toString(),
      name: name,
      description: description,
      imageUrl: 'https://via.placeholder.com/150',
      latitude: elementLat,
      longitude: elementLon,
      rating: 4.2,
      distance: '${_calculateDistance(userLat, userLon, elementLat, elementLon).toStringAsFixed(1)} km',
    );
  }

  static double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
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

  static Future<List<Destination>> fetchNearbyPlaces(double lat, double lon, {double radius = 1000}) async {
    try {
      final apiService = ApiService();
      final elements = await apiService.fetchPlaces(lat, lon, radius: radius);

      if (elements.isEmpty) {
        return sampleDestinations;
      }

      return elements.map((element) => fromOSMElement(element, lat, lon)).toList();
    } catch (e) {
      print('Error fetching places: $e');
      return sampleDestinations;
    }
  }

  static Future<List<Destination>> fetchNearbyPlacesWithRetry(
      double lat,
      double lon, {
        double radius = 1000,
        int maxRetries = 3,
      }) async {
    try {
      final apiService = ApiService();
      final elements = await apiService.fetchPlacesWithRetry(
          lat,
          lon,
          radius: radius,
          maxRetries: maxRetries
      );

      return elements.map((element) => fromOSMElement(element, lat, lon)).toList();
    } catch (e) {
      print('Error fetching places with retry: $e');
      return sampleDestinations;
    }
  }
}