import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/usecases/get_images.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ImageListEvent {}

class FetchImageList extends ImageListEvent {
  final int page;

  FetchImageList(this.page);
}

abstract class ImageListState extends Equatable {}

class isLoading extends ImageListState {
  @override
  List<Object?> get props => [];
}

class isLoadedImage extends ImageListState {
  final List<PhotoEntity> imageList;

  isLoadedImage({required this.imageList});

  @override
  List<Object?> get props => [];
}

class isError extends ImageListState {
  final String message;

  isError({required this.message});

  @override
  List<Object?> get props => [];
}
class isLoadingMore extends ImageListState {
  final List<PhotoEntity> imageList;

  isLoadingMore({required this.imageList});

  @override
  List<Object?> get props => [imageList];
}

class ImageListBloc extends Bloc<ImageListEvent, ImageListState> {
  final GetImages getImages;
  List<PhotoEntity> imageData = [];
  bool isFetching = false;
  bool errorFetch = false;// Prevent redundant calls

  ImageListBloc({required this.getImages}) : super(isLoading()) {
    on<FetchImageList>((event, emit) async {
      if (isFetching) return; // Prevent multiple fetches
      isFetching = true;

      if (event.page == 1) {
        emit(isLoading());
      } else {
        emit(isLoadingMore(imageList: imageData));
      }

      final result = await getImages.execute(event.page);
      result.fold(
            (failure) {
          isFetching = false;
          errorFetch = true;
          emit(isError(message: failure.message));
        },
            (data) {
          isFetching = false;
          errorFetch = false;
          imageData.addAll(data);
          emit(isLoadedImage(imageList: imageData));
        },
      );
    });
  }
}
