import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/repositories/recipe_list_repository.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final RecipesListRepository _recipesListRepository;

  HomeScreenCubit(this._recipesListRepository) : super(const HomeScreenState.loading());

  init() {
    emit(const HomeScreenState.stable());
  }

  Future<void> recipeData(String recipeName) async {
    final result = await _recipesListRepository.getRecipesListModel(recipeName);
    result.when(
      success: (data) {
        emit(HomeScreenState.ready(model: data));
      },
      failure: (error) {
        emit(HomeScreenState.error(error: error));
      },
    );
  }

  reload() {
    init();
  }
}
