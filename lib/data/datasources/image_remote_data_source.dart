import 'package:awesome_app/data/models/detail_response.dart';
import 'package:awesome_app/data/models/image_response.dart';
import 'package:awesome_app/utils/exception.dart';
import 'package:http/http.dart' as http;

abstract class ImageRemoteDataSource {
  Future<List<Photo>> getImages(int page);

  Future<DetailResponse> getDetailImage(String id);
}

class ImageRemoteDataSourceImpl implements ImageRemoteDataSource {
  static const API_KEY =
      '1u8vbB3iFG5KU1d3bPiBvqx4w0PCHnZzl1Hqjz9mKABBlh6IEkO7Pnts';
  static const BASE_URL = 'https://api.pexels.com/v1';

  final http.Client client;

  ImageRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Photo>> getImages(int page) async {
    final response = await client.get(
        Uri.parse('$BASE_URL/curated?page=$page&per_page=10'),
        headers: {'Authorization': API_KEY});
    if (response.statusCode == 200) {
      var anu = ImageResponse.fromJson(response.body).photos ?? [];
      return anu;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<DetailResponse> getDetailImage(String id) async {
    final response = await client.get(Uri.parse('$BASE_URL/photos/$id'),
        headers: {'Authorization': API_KEY});
    if (response.statusCode == 200) {
      return DetailResponse.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }
}
