import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/widgets/gereric_error_screen.dart';
import 'package:food_recipe_demo/src/common/widgets/loader/custom_loader.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/cubit/recipe_details_cubit.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/cubit/recipe_details_state.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/pages/recipe_details_screen_argument.dart';
import 'package:get_it/get_it.dart';

class RecipeDetailsScreen extends StatefulWidget {
  final RecipeDetailsScreenArgument recipeDetailsScreenArgument;

  const RecipeDetailsScreen({
    Key? key,
    required this.recipeDetailsScreenArgument,
  }) : super(key: key);

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeDetailsCubit>(
      create: (_) => GetIt.I()..init(id: widget.recipeDetailsScreenArgument.id),
      child: Scaffold(
        backgroundColor: AppColors.screenBG,
        body: SafeArea(
          child: BlocBuilder<RecipeDetailsCubit, RecipeDetailsState>(
            builder: (context, state) => state.map(
              loading: (_) => const Center(child: CustomCircularLoader()),
              ready: (state) => Container(),
              // ready: (state) => _buildAccountSummaryBody(state.RecipeDetailsScreenModel, context),
              error: (state) {
                return GenericErrorScreen(
                  onButtonPressed: () =>
                      context.read<RecipeDetailsCubit>().reload(id: widget.recipeDetailsScreenArgument.id),
                  error: state.error,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
