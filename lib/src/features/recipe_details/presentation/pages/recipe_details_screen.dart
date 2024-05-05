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
  final RecipeDetailsScreenArgument argument;

  const RecipeDetailsScreen({
    Key? key,
    required this.argument,
  }) : super(key: key);

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeDetailsCubit>(
      create: (_) => GetIt.I()..init(id: widget.argument.id),
      child: Scaffold(
        backgroundColor: AppColors.screenBG,
        body: SafeArea(
          child: BlocBuilder<RecipeDetailsCubit, RecipeDetailsState>(
            builder: (context, state) => state.map(
              loading: (_) => const Center(child: CustomCircularLoader()),
              ready: (state) => const Center(child: Text('Recipe Details Screen')),
              // ready: (state) => _buildAccountSummaryBody(state.RecipeDetailsScreenModel, context),
              error: (state) {
                return GenericErrorScreen(
                  onButtonPressed: () => context.read<RecipeDetailsCubit>().reload(recipeId: widget.argument.id),
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
