import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_list_event.freezed.dart';

@freezed
class ImageListEvent with _$ImageListEvent {
  const factory ImageListEvent.fetchImageList(int page) = FetchImageList;
}
