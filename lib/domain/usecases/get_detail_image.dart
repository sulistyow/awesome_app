import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:awesome_app/domain/repositories/image_repository.dart';
import 'package:awesome_app/utils/failure.dart';
import 'package:dartz/dartz.dart';

class GetDetailImage {
  final ImageRepository repository;

  GetDetailImage(this.repository);

  Future<Either<Failure, PhotoDetail>> execute(String id) =>
      repository.getDetailImage(id);
}
