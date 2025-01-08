import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:awesome_app/domain/usecases/get_detail_image.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ImageDetailEvent {}

@immutable
abstract class ImageDetailState extends Equatable {}

class FetchImageDetail extends ImageDetailEvent {
  final String photoId;

  FetchImageDetail(this.photoId);
}

class isLoading extends ImageDetailState {
  @override
  List<Object?> get props => [];
}

class isLoaded extends ImageDetailState {
  final PhotoDetail photoDetail;

  isLoaded({required this.photoDetail});

  @override
  List<Object?> get props => [];
}

class isError extends ImageDetailState {
  final String message;

  isError({required this.message});

  @override
  List<Object?> get props => [];
}

class ImageDetailBloc extends Bloc<ImageDetailEvent, ImageDetailState> {
  final GetDetailImage getDetailImage;

  ImageDetailBloc({required this.getDetailImage}) : super(isLoading()) {
    on<FetchImageDetail>((event, emit) async {
      emit(isLoading());

      final result = await getDetailImage.execute(event.photoId);
      result.fold((failure) {
        emit(isError(message: failure.message));
      }, (data) {
        emit(isLoaded(photoDetail: data));
      });
    });
  }
}
