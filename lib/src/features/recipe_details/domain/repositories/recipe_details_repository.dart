import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/datasources/recipe_details_rest_client.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';

class RecipeDetailsRepository {
  final RecipeDetailsRestClient _recipeDetailsDataSource;

  RecipeDetailsRepository(this._recipeDetailsDataSource);

  Future<DioResult<RecipesDetailsResponseModel>> getRecipeList({required String recipeId}) async {
    final DioResult<RecipesDetailsResponseModel> result = await _recipeDetailsDataSource.getRecipeDetails(id: recipeId);
    return Future.value(result.map(
      success: (success) => DioResult.success(success.result),
      failure: (failure) => DioResult.failure(failure.error),
    ));
  }
}
