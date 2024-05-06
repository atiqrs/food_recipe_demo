import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/entities/recipe_data_model.dart';

List<Recipe> convertResponseToRecipesList(RecipesListResponseModel response) {
  return response.datas?.map((data) {
        return Recipe(
          id: data.id ?? 0,
          title: data.title ?? "",
          image: data.image ?? "",
          imageType: data.imageType ?? "",
          ingredients: AppStrings.mockRecipeIngredients,
          time: AppStrings.mockRecipeTime,
        );
      }).toList() ??
      [];
}
