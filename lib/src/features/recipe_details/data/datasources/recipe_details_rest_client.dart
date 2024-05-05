import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_response_handler.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';
import 'package:food_recipe_demo/src/common/remote_data/http_constants.dart';
import 'package:food_recipe_demo/src/common/resources/endpoints.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';

class RecipeDetailsRestClient {
  final Dio dio;

  RecipeDetailsRestClient(this.dio);

  Future<DioResult<RecipesDetailsResponseModel>> getRecipeDetails({required String id}) async =>
      await DioJsonResponseHandler<RecipesDetailsResponseModel>().handleResponse(
        requestAction: () async {
          final originalOptions = dio.options;
          final optionsWithCustomHeaders = dio.options.copyWith(
              headers: originalOptions.headers
                ..addAll({
                  Header.rapidKey: Endpoints.rapidApiKey,
                }));

          dio.options = optionsWithCustomHeaders;
          final result = dio.get<Map<String, dynamic>>(Endpoints.recipeDetails(id));
          dio.options = originalOptions;
          return result;
        },
        mapJsonAction: (responseData) {
          return RecipesDetailsResponseModel.fromJson(responseData);
        },
      );
}
