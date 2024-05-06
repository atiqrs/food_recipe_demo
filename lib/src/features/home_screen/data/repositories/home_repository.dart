import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/datasources/home_rest_client.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';

class HomeRepository {
  final HomeRestClient _homeDataSource;

  HomeRepository(this._homeDataSource);

  Future<DioResult<RecipesListResponseModel>> getRecipeList({required String keyword}) async {
    final DioResult<RecipesListResponseModel> result = await _homeDataSource.getRecipeList(keyword: keyword);
    return Future.value(result.map(
      success: (success) => DioResult.success(success.result),
      failure: (failure) => DioResult.failure(failure.error),
    ));
  }
}
