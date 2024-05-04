import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';

class RecipeDetailsRepository {
  RecipeDetailsRepository();

  Future<RecipesDetailsResponseModel> getRecipeDetails(String id) async {
    return const RecipesDetailsResponseModel();
  }
}
