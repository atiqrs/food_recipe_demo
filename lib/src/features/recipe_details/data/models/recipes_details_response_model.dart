import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_details_response_model.freezed.dart';
part 'recipes_details_response_model.g.dart';

@freezed
class RecipesDetailsResponseModel with _$RecipesDetailsResponseModel {
  const factory RecipesDetailsResponseModel({
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    bool? lowFodmap,
    int? weightWatcherSmartPoints,
    String? gaps,
    int? preparationMinutes,
    int? cookingMinutes,
    int? aggregateLikes,
    int? healthScore,
    String? creditsText,
    String? sourceName,
    double? pricePerServing,
    List<ExtendedIngredient>? extendedIngredients,
    int? id,
    String? title,
    int? readyInMinutes,
    int? servings,
    String? sourceUrl,
    String? image,
    String? imageType,
    Taste? taste,
    String? summary,
    List<dynamic>? cuisines,
    List<String>? dishTypes,
    List<String>? diets,
    List<dynamic>? occasions,
    WinePairing? winePairing,
    String? instructions,
    List<AnalyzedInstruction>? analyzedInstructions,
    dynamic originalId,
    double? spoonacularScore,
  }) = _RecipesDetailsResponseModel;

  factory RecipesDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$RecipesDetailsResponseModelFromJson(json);
}

@freezed
class AnalyzedInstruction with _$AnalyzedInstruction {
  const factory AnalyzedInstruction({
    String? name,
    List<Step>? steps,
  }) = _AnalyzedInstruction;

  factory AnalyzedInstruction.fromJson(Map<String, dynamic> json) => _$AnalyzedInstructionFromJson(json);
}

@freezed
class Step with _$Step {
  const factory Step({
    int? number,
    String? step,
    List<Ent>? ingredients,
    List<Ent>? equipment,
    Length? length,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}

@freezed
class Ent with _$Ent {
  const factory Ent({
    int? id,
    String? name,
    String? localizedName,
    String? image,
  }) = _Ent;

  factory Ent.fromJson(Map<String, dynamic> json) => _$EntFromJson(json);
}

@freezed
class Length with _$Length {
  const factory Length({
    int? number,
    String? unit,
  }) = _Length;

  factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);
}

@freezed
class ExtendedIngredient with _$ExtendedIngredient {
  const factory ExtendedIngredient({
    int? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalName,
    double? amount,
    String? unit,
    List<String>? meta,
    Measures? measures,
  }) = _ExtendedIngredient;

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => _$ExtendedIngredientFromJson(json);
}

@freezed
class Measures with _$Measures {
  const factory Measures({
    Metric? us,
    Metric? metric,
  }) = _Measures;

  factory Measures.fromJson(Map<String, dynamic> json) => _$MeasuresFromJson(json);
}

@freezed
class Metric with _$Metric {
  const factory Metric({
    double? amount,
    String? unitShort,
    String? unitLong,
  }) = _Metric;

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);
}

@freezed
class Taste with _$Taste {
  const factory Taste({
    double? sweetness,
    int? saltiness,
    double? sourness,
    double? bitterness,
    double? savoriness,
    double? fattiness,
    int? spiciness,
  }) = _Taste;

  factory Taste.fromJson(Map<String, dynamic> json) => _$TasteFromJson(json);
}

@freezed
class WinePairing with _$WinePairing {
  const factory WinePairing({
    List<dynamic>? pairedWines,
    String? pairingText,
    List<dynamic>? productMatches,
  }) = _WinePairing;

  factory WinePairing.fromJson(Map<String, dynamic> json) => _$WinePairingFromJson(json);
}
