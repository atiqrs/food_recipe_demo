import 'dart:io';

import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/error/error.dart';

extension DioErrorExtensions on DioError {
  bool isTimeout() =>
      type == DioErrorType.connectTimeout ||
      type == DioErrorType.receiveTimeout ||
      type == DioErrorType.sendTimeout ||

      /// handles case with WiFi disabled (instant timeout)
      (error is SocketException && (error as SocketException).osError != null);

  bool isServerUnavailableByStatusCode() =>
      response?.statusCode == HttpStatus.serviceUnavailable || response?.statusCode == HttpStatus.internalServerError;

  bool isUnauthorized() => response?.statusCode == HttpStatus.unauthorized;

  bool isNotFound() => response?.statusCode == HttpStatus.notFound;
}

extension ErrorExtensions on AppError? {
  bool isNotFoundResponse() => this?.exception is DioError && (this!.exception as DioError).isNotFound();
}
