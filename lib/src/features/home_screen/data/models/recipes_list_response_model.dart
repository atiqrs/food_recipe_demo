// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_list_response_model.freezed.dart';
part 'recipes_list_response_model.g.dart';

@freezed
class RecipesListResponseModel with _$RecipesListResponseModel {
  const factory RecipesListResponseModel({
    @JsonKey(name: "results")
    List<Data>? datas,
    @JsonKey(name: "offset")
    int? offset,
    @JsonKey(name: "number")
    int? number,
    @JsonKey(name: "totalResults")
    int? totalDatas,
  }) = _RecipesListResponseModel;

  factory RecipesListResponseModel.fromJson(Map<String, dynamic> json) => _$RecipesListResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "image")
    String? image,
    @JsonKey(name: "imageType")
    String? imageType,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
