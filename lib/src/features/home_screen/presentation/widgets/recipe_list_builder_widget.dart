import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/widgets/custom_snakebar.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/widgets/recipe_card_widget.dart';

class RecipeListBuilder extends StatefulWidget {
  const RecipeListBuilder(this.recipeList, this.onSelectRecipeItem, {super.key});

  final List<Data> recipeList;
  final Function onSelectRecipeItem;

  @override
  State<RecipeListBuilder> createState() => _RecipeListBuilderState();
}

class _RecipeListBuilderState extends State<RecipeListBuilder> {
  @override
  Widget build(BuildContext context) {
    void onSaveRecipe() {
      customSnakeBar(context, AppStrings.notImpl);
    }

    return SliverList(
      delegate: widget.recipeList.isNotEmpty
          ? SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onSelectRecipeItem(index),
                      child: RecipeCard(
                        imageLink: widget.recipeList[index].image!,
                        title: widget.recipeList[index].title!,
                        // TODO: Add the actual ingredients list when available from bff specs
                        ingredients: AppStrings.mockRecipeIngredients,
                        // TODO: Add the actual time when available from bff specs
                        time: AppStrings.mockRecipeTime,
                        //TODO: Once local db is implemented, revisit {isSaved} & {onClickSaveRecipe} fields
                        isSaved: false,
                        onClickSaveRecipe: onSaveRecipe,
                      ),
                    ),
                  ],
                );
              },
              childCount: widget.recipeList.length,
            )
          : SliverChildListDelegate([]),
    );
  }
}
