import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_list_response_model.freezed.dart';
part 'recipes_list_response_model.g.dart';

@freezed
class RecipesListResponseModel with _$RecipesListResponseModel {
  const factory RecipesListResponseModel({
    List<Result>? results,
    int? offset,
    int? number,
    int? totalResults,
  }) = _RecipesListResponseModel;

  factory RecipesListResponseModel.fromJson(Map<String, dynamic> json) => _$RecipesListResponseModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? title,
    String? image,
    String? imageType,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
