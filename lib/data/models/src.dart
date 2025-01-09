import 'package:freezed_annotation/freezed_annotation.dart';

part 'src.freezed.dart';
part 'src.g.dart';

@freezed
class Src with _$Src {
  const factory Src({
    String? original,
    @JsonKey(name: 'large2x') String? large2X,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
