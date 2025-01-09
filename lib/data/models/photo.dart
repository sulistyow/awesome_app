import 'package:freezed_annotation/freezed_annotation.dart';
import 'src.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
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
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
