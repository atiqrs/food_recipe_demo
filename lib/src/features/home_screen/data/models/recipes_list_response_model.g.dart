// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesListResponseModelImpl _$$RecipesListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipesListResponseModelImpl(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: (json['offset'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecipesListResponseModelImplToJson(
        _$RecipesListResponseModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'offset': instance.offset,
      'number': instance.number,
      'totalResults': instance.totalResults,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
    };
