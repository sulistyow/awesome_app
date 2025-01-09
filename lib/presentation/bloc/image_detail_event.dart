
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_detail_event.freezed.dart';

@freezed
class ImageDetailEvent with _$ImageDetailEvent{
  const factory ImageDetailEvent.fetchImageDetail(String photoId) = FetchImageDetail;
}