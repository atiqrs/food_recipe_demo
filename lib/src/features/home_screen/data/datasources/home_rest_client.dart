import 'package:dio/dio.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_response_handler.dart';
import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';
import 'package:food_recipe_demo/src/common/remote_data/http_constants.dart';
import 'package:food_recipe_demo/src/common/resources/endpoints.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';

class HomeRestClient {
  final Dio dio;

  HomeRestClient(this.dio);

  Future<DioResult<RecipesListResponseModel>> getRecipeList({required String keyword}) async =>
      await DioJsonResponseHandler<RecipesListResponseModel>().handleResponse(
        requestAction: () async {
          final originalOptions = dio.options;
          final optionsWithCustomHeaders = dio.options.copyWith(
              headers: originalOptions.headers
                ..addAll({
                  Header.rapidKey: Endpoints.rapidApiKey,
                }));

          dio.options = optionsWithCustomHeaders;
          final result = dio.get<Map<String, dynamic>>(Endpoints.recipeListQuery(keyword));
          dio.options = originalOptions;
          return result;
        },
        mapJsonAction: (responseData) {
          return RecipesListResponseModel.fromJson(responseData);
        },
      );
}
