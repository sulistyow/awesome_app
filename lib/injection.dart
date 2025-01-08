import 'package:awesome_app/data/datasources/image_remote_data_source.dart';
import 'package:awesome_app/domain/repositories/image_repository.dart';
import 'package:awesome_app/domain/usecases/get_images.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'data/repositories/image_repository_impl.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton(() => GetImages(locator()));
  locator.registerLazySingleton<ImageRepository>(
      () => ImageRepositoryImpl(remoteDataSource: locator()));
  locator.registerLazySingleton<ImageRemoteDataSource>(
      () => ImageRemoteDataSourceImpl(client: locator()));

  locator.registerLazySingleton(() => http.Client());
}
