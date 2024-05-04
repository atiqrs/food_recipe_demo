// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesDetailsResponseModelImpl _$$RecipesDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipesDetailsResponseModelImpl(
      vegetarian: json['vegetarian'] as bool?,
      vegan: json['vegan'] as bool?,
      glutenFree: json['glutenFree'] as bool?,
      dairyFree: json['dairyFree'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      cheap: json['cheap'] as bool?,
      veryPopular: json['veryPopular'] as bool?,
      sustainable: json['sustainable'] as bool?,
      lowFodmap: json['lowFodmap'] as bool?,
      weightWatcherSmartPoints:
          (json['weightWatcherSmartPoints'] as num?)?.toInt(),
      gaps: json['gaps'] as String?,
      preparationMinutes: (json['preparationMinutes'] as num?)?.toInt(),
      cookingMinutes: (json['cookingMinutes'] as num?)?.toInt(),
      aggregateLikes: (json['aggregateLikes'] as num?)?.toInt(),
      healthScore: (json['healthScore'] as num?)?.toInt(),
      creditsText: json['creditsText'] as String?,
      sourceName: json['sourceName'] as String?,
      pricePerServing: (json['pricePerServing'] as num?)?.toDouble(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
          ?.map((e) => ExtendedIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      readyInMinutes: (json['readyInMinutes'] as num?)?.toInt(),
      servings: (json['servings'] as num?)?.toInt(),
      sourceUrl: json['sourceUrl'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      taste: json['taste'] == null
          ? null
          : Taste.fromJson(json['taste'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      cuisines: json['cuisines'] as List<dynamic>?,
      dishTypes: (json['dishTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      diets:
          (json['diets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      occasions: json['occasions'] as List<dynamic>?,
      winePairing: json['winePairing'] == null
          ? null
          : WinePairing.fromJson(json['winePairing'] as Map<String, dynamic>),
      instructions: json['instructions'] as String?,
      analyzedInstructions: (json['analyzedInstructions'] as List<dynamic>?)
          ?.map((e) => AnalyzedInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      originalId: json['originalId'],
      spoonacularScore: (json['spoonacularScore'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RecipesDetailsResponseModelImplToJson(
        _$RecipesDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cheap': instance.cheap,
      'veryPopular': instance.veryPopular,
      'sustainable': instance.sustainable,
      'lowFodmap': instance.lowFodmap,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'gaps': instance.gaps,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'sourceName': instance.sourceName,
      'pricePerServing': instance.pricePerServing,
      'extendedIngredients': instance.extendedIngredients,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'imageType': instance.imageType,
      'taste': instance.taste,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'occasions': instance.occasions,
      'winePairing': instance.winePairing,
      'instructions': instance.instructions,
      'analyzedInstructions': instance.analyzedInstructions,
      'originalId': instance.originalId,
      'spoonacularScore': instance.spoonacularScore,
    };

_$AnalyzedInstructionImpl _$$AnalyzedInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyzedInstructionImpl(
      name: json['name'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalyzedInstructionImplToJson(
        _$AnalyzedInstructionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      number: (json['number'] as num?)?.toInt(),
      step: json['step'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => Ent.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipment: (json['equipment'] as List<dynamic>?)
          ?.map((e) => Ent.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: json['length'] == null
          ? null
          : Length.fromJson(json['length'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'step': instance.step,
      'ingredients': instance.ingredients,
      'equipment': instance.equipment,
      'length': instance.length,
    };

_$EntImpl _$$EntImplFromJson(Map<String, dynamic> json) => _$EntImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      localizedName: json['localizedName'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$EntImplToJson(_$EntImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'image': instance.image,
    };

_$LengthImpl _$$LengthImplFromJson(Map<String, dynamic> json) => _$LengthImpl(
      number: (json['number'] as num?)?.toInt(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$LengthImplToJson(_$LengthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'unit': instance.unit,
    };

_$ExtendedIngredientImpl _$$ExtendedIngredientImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtendedIngredientImpl(
      id: (json['id'] as num?)?.toInt(),
      aisle: json['aisle'] as String?,
      image: json['image'] as String?,
      consistency: json['consistency'] as String?,
      name: json['name'] as String?,
      nameClean: json['nameClean'] as String?,
      original: json['original'] as String?,
      originalName: json['originalName'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      meta: (json['meta'] as List<dynamic>?)?.map((e) => e as String).toList(),
      measures: json['measures'] == null
          ? null
          : Measures.fromJson(json['measures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExtendedIngredientImplToJson(
        _$ExtendedIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aisle': instance.aisle,
      'image': instance.image,
      'consistency': instance.consistency,
      'name': instance.name,
      'nameClean': instance.nameClean,
      'original': instance.original,
      'originalName': instance.originalName,
      'amount': instance.amount,
      'unit': instance.unit,
      'meta': instance.meta,
      'measures': instance.measures,
    };

_$MeasuresImpl _$$MeasuresImplFromJson(Map<String, dynamic> json) =>
    _$MeasuresImpl(
      us: json['us'] == null
          ? null
          : Metric.fromJson(json['us'] as Map<String, dynamic>),
      metric: json['metric'] == null
          ? null
          : Metric.fromJson(json['metric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeasuresImplToJson(_$MeasuresImpl instance) =>
    <String, dynamic>{
      'us': instance.us,
      'metric': instance.metric,
    };

_$MetricImpl _$$MetricImplFromJson(Map<String, dynamic> json) => _$MetricImpl(
      amount: (json['amount'] as num?)?.toDouble(),
      unitShort: json['unitShort'] as String?,
      unitLong: json['unitLong'] as String?,
    );

Map<String, dynamic> _$$MetricImplToJson(_$MetricImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };

_$TasteImpl _$$TasteImplFromJson(Map<String, dynamic> json) => _$TasteImpl(
      sweetness: (json['sweetness'] as num?)?.toDouble(),
      saltiness: (json['saltiness'] as num?)?.toInt(),
      sourness: (json['sourness'] as num?)?.toDouble(),
      bitterness: (json['bitterness'] as num?)?.toDouble(),
      savoriness: (json['savoriness'] as num?)?.toDouble(),
      fattiness: (json['fattiness'] as num?)?.toDouble(),
      spiciness: (json['spiciness'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TasteImplToJson(_$TasteImpl instance) =>
    <String, dynamic>{
      'sweetness': instance.sweetness,
      'saltiness': instance.saltiness,
      'sourness': instance.sourness,
      'bitterness': instance.bitterness,
      'savoriness': instance.savoriness,
      'fattiness': instance.fattiness,
      'spiciness': instance.spiciness,
    };

_$WinePairingImpl _$$WinePairingImplFromJson(Map<String, dynamic> json) =>
    _$WinePairingImpl(
      pairedWines: json['pairedWines'] as List<dynamic>?,
      pairingText: json['pairingText'] as String?,
      productMatches: json['productMatches'] as List<dynamic>?,
    );

Map<String, dynamic> _$$WinePairingImplToJson(_$WinePairingImpl instance) =>
    <String, dynamic>{
      'pairedWines': instance.pairedWines,
      'pairingText': instance.pairingText,
      'productMatches': instance.productMatches,
    };
