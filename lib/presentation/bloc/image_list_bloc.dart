import 'package:awesome_app/presentation/bloc/image_list_event.dart';
import 'package:awesome_app/presentation/bloc/image_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/usecases/get_images.dart';

class ImageListBloc extends Bloc<ImageListEvent, ImageListState> {
  final GetImages getImages;
  List<PhotoEntity> imageData = [];
  bool isFetching = false;
  bool errorFetch = false; // Prevent redundant calls

  ImageListBloc({required this.getImages}) : super(const ImageListState.isLoading()) {
    on<FetchImageList>((event, emit) async {
      if (isFetching) return; // Prevent multiple fetches
      isFetching = true;

      if (event.page == 1) {
        emit(const ImageListState.isLoading());
      } else {
        emit(ImageListState.isLoadingMore(imageList: imageData));
      }

      final result = await getImages.execute(event.page);
      result.fold(
            (failure) {
          isFetching = false;
          errorFetch = true;
          emit(ImageListState.isError(message: failure.message));
        },
            (data) {
          isFetching = false;
          errorFetch = false;
          imageData.addAll(data);
          emit(ImageListState.isLoadedImage(imageList: imageData));
        },
      );
    });
  }
}
