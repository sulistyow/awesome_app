import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/repositories/image_repository.dart';
import 'package:awesome_app/utils/failure.dart';
import 'package:dartz/dartz.dart';

class GetImages {
  final ImageRepository repository;
  GetImages(this.repository);

  Future<Either<Failure, List<PhotoEntity>>> execute(int page) {
    return repository.getImages(page);
  }
}
