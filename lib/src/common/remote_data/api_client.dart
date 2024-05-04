import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/resources/endpoints.dart';

class DioClient {
// dio instance
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.responseType = ResponseType.json;
  }
}
