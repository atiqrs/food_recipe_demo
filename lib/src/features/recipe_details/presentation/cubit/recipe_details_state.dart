import 'package:food_recipe_demo/src/common/error/error.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_state.freezed.dart';

@freezed
class RecipeDetailsState with _$RecipeDetailsState {
  const factory RecipeDetailsState.loading() = _LoadingRecipeDetailsState;
  const factory RecipeDetailsState.ready({
    required RecipesDetailsResponseModel model,
  }) = _ReadyRecipeDetailsState;

  const factory RecipeDetailsState.error({required AppError error}) = _ErrorRecipeDetailsState;
}