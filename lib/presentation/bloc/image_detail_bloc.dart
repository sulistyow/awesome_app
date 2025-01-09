import 'package:awesome_app/domain/usecases/get_detail_image.dart';
import 'package:awesome_app/presentation/bloc/image_detail_event.dart';
import 'package:awesome_app/presentation/bloc/image_detail_state.dart';
import 'package:bloc/bloc.dart';

class ImageDetailBloc extends Bloc<ImageDetailEvent, ImageDetailState> {
  final GetDetailImage getDetailImage;

  ImageDetailBloc({required this.getDetailImage}) : super(isLoading()) {
    on<FetchImageDetail>((event, emit) async {
      emit(isLoading());

      final result = await getDetailImage.execute(event.photoId);
      result.fold((failure) {
        emit(isError(message: failure.message));
      }, (data) {
        emit(isLoaded(photo: data));
      });
    });
  }
}
