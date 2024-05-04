import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  // final HomeRepository _homeScreenRepository;

  HomeScreenCubit() : super(const HomeScreenState.loading());

  init() {
    emit(const HomeScreenState.stable());
  }

  Future<void> recipeData(String id) async {
    // final result = await _homeScreenRepository.getRecipeList(id: id);
    // result.when(
    //   success: (data) {
    //     emit(HomeScreenState.ready(model: data));
    //   },
    //   failure: (error) {
    //     emit(HomeScreenState.error(error: error));
    //   },
    // );
  }

  reload() {
    init();
  }
}
