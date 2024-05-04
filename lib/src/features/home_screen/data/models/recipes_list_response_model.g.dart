// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesListResponseModelImpl _$$RecipesListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipesListResponseModelImpl(
      datas: (json['results'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: (json['offset'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      totalDatas: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecipesListResponseModelImplToJson(
        _$RecipesListResponseModelImpl instance) =>
    <String, dynamic>{
      'results': instance.datas,
      'offset': instance.offset,
      'number': instance.number,
      'totalResults': instance.totalDatas,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
    };
