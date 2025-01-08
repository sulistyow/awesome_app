import 'dart:io';

import 'package:awesome_app/data/datasources/image_remote_data_source.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:awesome_app/domain/repositories/image_repository.dart';
import 'package:awesome_app/utils/exception.dart';
import 'package:awesome_app/utils/failure.dart';
import 'package:dartz/dartz.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageRemoteDataSource remoteDataSource;

  ImageRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PhotoDetail>> getDetailImage(String id) async {
    try {
      final result = await remoteDataSource.getDetailImage(id);
      return Right(result.toEntity());
    } on ServerException {
      return Left(ServerFailure('Cannot connect to server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to network'));
    }
  }

  @override
  Future<Either<Failure, List<PhotoEntity>>> getImages(int page) async {
    try {
      final result = await remoteDataSource.getImages(page);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure('Cannot connect to server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to network'));
    }
  }
}
