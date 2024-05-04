import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/remote_data/http_constants.dart';

class DioHelper {
  DioHelper._();

  static Future<Dio> createPublicKeyPinnedDio(
    String baseUrl, {
    Duration timeout = const Duration(seconds: 30),
    String rapidKeyHeaderName = Header.rapidKey,
    bool excludeAuthHeaders = false,
  }) async {
    final timeoutMs = timeout.inMilliseconds;
    final baseOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: timeoutMs,
      sendTimeout: timeoutMs,
      receiveTimeout: timeoutMs,
    );
    final dio = Dio(baseOptions);
    return dio;
  }
}
