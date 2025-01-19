import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String id,
    required String name,
    required String category,
    required String address,
    required double latitude,
    required double longitude,
    String? imageUrl,
    String? description,
    String? phoneNumber,
    String? openingHours,
    List<String>? features,
    double? rating,
    int? reviewCount,
    @Default(false) bool isFavorite,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

extension PlaceExtension on Place {
  LatLng get location => LatLng(latitude, longitude);

  bool get hasImage => imageUrl != null && imageUrl!.isNotEmpty;

  bool get hasDescription => description != null && description!.isNotEmpty;

  bool get hasFeatures => features != null && features!.isNotEmpty;

  bool get hasContactInfo => phoneNumber != null || openingHours != null;

  String get ratingText => rating != null ? rating!.toStringAsFixed(1) : 'N/A';

  String get reviewCountText =>
      reviewCount != null ? '$reviewCount review' : 'review not found';
}