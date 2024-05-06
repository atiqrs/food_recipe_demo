import 'package:food_recipe_demo/src/common/remote_data/dio_result.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/repositories/home_repository.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/entities/recipe_data_model.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/usecases/recipe_list_convert_case.dart';

class RecipesListRepository {
  final HomeRepository _homeRepository;

  RecipesListRepository(this._homeRepository);

  Future<DioResult<RecipesListModel>> getRecipesListModel(String recipeName) async {
    final result = await _homeRepository.getRecipeList(keyword: recipeName);

    return Future.value(result.map(
      success: (success) => DioResult.success(
        RecipesListModel(
          datas: convertResponseToRecipesList(success.result),
        ),
      ),
      failure: (failure) => DioResult.failure(failure.error),
    ));
  }
}
