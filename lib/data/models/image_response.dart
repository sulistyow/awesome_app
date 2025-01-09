import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo.dart';

part 'image_response.freezed.dart';
part 'image_response.g.dart';

@freezed
class ImageResponse with _$ImageResponse {
  const factory ImageResponse({
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    List<Photo>? photos,
    @JsonKey(name: 'total_results') int? totalResults,
    @JsonKey(name: 'next_page') String? nextPage,
  }) = _ImageResponse;

  factory ImageResponse.fromJson(Map<String, dynamic> json) => _$ImageResponseFromJson(json);
}
