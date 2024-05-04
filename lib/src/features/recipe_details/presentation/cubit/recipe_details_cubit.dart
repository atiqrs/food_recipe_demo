import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/cubit/recipe_details_state.dart';

class RecipeDetailsCubit extends Cubit<RecipeDetailsState> {
  // final RecipeDetailsRepository _recipeDetailsRepository;

  RecipeDetailsCubit() : super(const RecipeDetailsState.loading());

  init({required String id}) {
    emit(const RecipeDetailsState.loading());
    getRecipeDetailsData(id);
  }

  Future<void> getRecipeDetailsData(String id) async {}

  reload({required String id}) {
    init(id: id);
  }
}
