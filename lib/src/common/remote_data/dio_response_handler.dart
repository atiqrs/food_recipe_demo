import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:food_recipe_demo/src/common/error/error.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';

class DioJsonResponseHandler<MODEL> extends DioResponseHandler<MODEL, Map<String, dynamic>> {}

class DioResponseHandler<MODEL, RAW_RESPONSE> {
  Future<DioResult<MODEL>> handleResponse({
    required Future<Response<RAW_RESPONSE>> Function() requestAction,
    required MODEL Function(RAW_RESPONSE) mapJsonAction,
    DioResult<MODEL>? Function(Object error)? customErrorHandlingAction,
    Future<Error?> Function(DioError error)? errorHandlingExtension,
  }) async {
    try {
      final response = await requestAction();

      if (response.data != null) {
        return DioResult.success(mapJsonAction(response.data as RAW_RESPONSE));
      } else {
        return DioResult.failure(DefaultError(exception: Exception('${MODEL.toString()} response is null')));
      }
    } on Exception catch (error) {
      try {
        final customErrorHandlingDioResult = customErrorHandlingAction?.call(error);
        if (customErrorHandlingDioResult != null) {
          return customErrorHandlingDioResult;
        }
      } catch (customErrorHandlingError) {
        debugPrint("Error during customErrorHandlingError: $customErrorHandlingAction");
        return _createDefaultError(customErrorHandlingError);
      }
      return _createDefaultError(error);
    } catch (error) {
      return _createDefaultError(error);
    }
  }

  DioResult<MODEL> _createDefaultError(Object error) {
    final transformedError = DefaultError.withPrefix(
      exceptionInfo: "${error.runtimeType},\n Details:\n$error",
      stackPrefix: MODEL.toString(),
    );
    return DioResult.failure(transformedError);
  }
}
