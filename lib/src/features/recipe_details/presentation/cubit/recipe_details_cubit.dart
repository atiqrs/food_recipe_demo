import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_demo/src/features/recipe_details/domain/repositories/recipe_details_repository.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/cubit/recipe_details_state.dart';

class RecipeDetailsCubit extends Cubit<RecipeDetailsState> {
  final RecipeDetailsRepository _recipeDetailsRepository;

  RecipeDetailsCubit(this._recipeDetailsRepository) : super(const RecipeDetailsState.loading());

  init({required String id}) {
    emit(const RecipeDetailsState.loading());
    getRecipeDetailsData(id);
  }

  Future<void> getRecipeDetailsData(String id) async {
    final result = await _recipeDetailsRepository.getRecipeList(recipeId: id);
    result.when(
      success: (data) {
        emit(RecipeDetailsState.ready(model: data));
      },
      failure: (error) {
        emit(RecipeDetailsState.error(error: error));
      },
    );
  }

  reload({required String recipeId}) {
    init(id: recipeId);
  }
}
