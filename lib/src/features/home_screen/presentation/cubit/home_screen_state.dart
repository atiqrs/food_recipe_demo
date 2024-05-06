import 'package:food_recipe_demo/src/common/error/error.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/entities/recipe_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.stable() = _StableHomeScreenState;

  const factory HomeScreenState.loading() = _LoadingHomeScreenState;

  const factory HomeScreenState.ready({
    required RecipesListModel model,
  }) = _HomeHomeScreenState;

  const factory HomeScreenState.error({required AppError error}) = _ErrorHomeScreenState;
}
