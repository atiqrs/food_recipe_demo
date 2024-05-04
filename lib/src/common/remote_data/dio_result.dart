import 'package:food_recipe_demo/src/common/error/error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_result.freezed.dart';

@freezed
class DioResult<T> with _$DioResult<T> {

  const factory DioResult.success(T result) = _Success<T>;

  const factory DioResult.failure(AppError error) = _Failure<T>;
}
