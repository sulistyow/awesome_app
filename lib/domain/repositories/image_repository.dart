import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:awesome_app/utils/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ImageRepository {
  Future<Either<Failure, List<PhotoEntity>>> getImages(int page);
  Future<Either<Failure, PhotoDetail>> getDetailImage(String id);
}
