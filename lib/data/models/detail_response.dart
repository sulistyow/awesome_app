import 'package:freezed_annotation/freezed_annotation.dart';

import 'src.dart';

part 'detail_response.freezed.dart';
part 'detail_response.g.dart';

@freezed
class DetailResponse with _$DetailResponse {
  const factory DetailResponse({
    int? id,
    int? width,
    int? height,
    String? url,
    String? photographer,
    @JsonKey(name: 'photographer_url') String? photographerUrl,
    @JsonKey(name: 'photographer_id') int? photographerId,
    @JsonKey(name: 'avg_color') String? avgColor,
    Src? src,
    bool? liked,
    String? alt,
  }) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailResponseFromJson(json);
}
