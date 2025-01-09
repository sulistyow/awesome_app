import 'package:awesome_app/domain/entities/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_list_state.freezed.dart';

@freezed
class ImageListState with _$ImageListState {
  const factory ImageListState.isLoading() = IsLoading;
  const factory ImageListState.isLoadedImage({required List<PhotoEntity> imageList}) = isLoadedImage;
  const factory ImageListState.isError({required String message}) = isError;
  const factory ImageListState.isLoadingMore({required List<PhotoEntity> imageList}) = isLoadingMore;
}
