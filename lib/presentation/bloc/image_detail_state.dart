import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_detail_state.freezed.dart';

@freezed
class ImageDetailState with _$ImageDetailState {
  const factory ImageDetailState.isLoading() = isLoading;

  const factory ImageDetailState.isLoaded(
      {required PhotoDetail photo}) = isLoaded;

  const factory ImageDetailState.isError({required String message}) = isError;
}
