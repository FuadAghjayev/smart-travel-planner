import 'package:dio/dio.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    return _instance;
  }

  ApiService._internal();

  final dio = Dio(BaseOptions(
    baseUrl: 'https://overpass-api.de/api',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
    responseType: ResponseType.json,
  ));

  Future<List<Map<String, dynamic>>> fetchPlaces(double lat, double lon, {double radius = 2000}) async {
    const String endpoint = '/interpreter';

    final query = '''
    [out:json][timeout:25];
    (
      node["tourism"](around:${radius},${lat},${lon});
      way["tourism"](around:${radius},${lat},${lon});
      relation["tourism"](around:${radius},${lat},${lon});
    );
    out body;
    >;
    out skel qt;
    ''';

    try {
      final response = await dio.post(
        endpoint,
        data: query,
        options: Options(
          headers: {'Content-Type': 'text/plain'},
          validateStatus: (status) => status! < 500,
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return List<Map<String, dynamic>>.from(data['elements'] as List);
      }

      return [];

    } on DioException catch (e) {
      print('Dio error: ${e.message}');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> fetchPlacesWithRetry(
      double lat,
      double lon, {
        double radius = 1000,
        int maxRetries = 3,
      }) async {
    int attempts = 0;

    while (attempts < maxRetries) {
      try {
        return await fetchPlaces(lat, lon, radius: radius);
      } catch (e) {
        attempts++;
        if (attempts == maxRetries) {
          rethrow;
        }
        await Future.delayed(Duration(seconds: attempts * 2));
      }
    }

    throw Exception('Failed after $maxRetries attempts');
  }
}