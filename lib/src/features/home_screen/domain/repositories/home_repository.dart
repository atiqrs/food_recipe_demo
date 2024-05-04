import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';

class HomeRepository {
  // final HomeRestClient _homeDataSource;

  HomeRepository();

  Future<RecipesListResponseModel> getRecipeList({required String id}) async {
    return const RecipesListResponseModel(
      results: [],
      offset: 0,
      number: 0,
      totalResults: 0,
    );
  }
}
