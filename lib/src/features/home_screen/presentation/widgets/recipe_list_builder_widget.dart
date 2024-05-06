import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/features/home_screen/domain/entities/recipe_data_model.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/widgets/recipe_card_widget.dart';

class RecipeListBuilder extends StatefulWidget {
  const RecipeListBuilder(this.recipeList, this.onSelectRecipeItem, {super.key});

  final List<Recipe> recipeList;
  final Function onSelectRecipeItem;

  @override
  State<RecipeListBuilder> createState() => _RecipeListBuilderState();
}

class _RecipeListBuilderState extends State<RecipeListBuilder> {
  List<Recipe> savedRecipes = [];

  void updateSaveStatus(Recipe recipe) {
    setState(() {
      recipe.isSaved = !recipe.isSaved;
      if (recipe.isSaved) {
        savedRecipes.add(recipe);
        // Save to local storage
      } else {
        savedRecipes.remove(recipe);
        // Remove from local storage
      }
      log('${savedRecipes.length} recipes saved');
    });
  }

  void updateSavedStatus(List<Recipe> savedRecipes, List<Recipe> listRecipe) {
    int count = 0;
    for (Recipe recipe in listRecipe) {
      count++;
      bool isSaved = savedRecipes.any((savedRecipe) => savedRecipe.id == recipe.id);
      recipe.isSaved = isSaved;
    }
    log('Updating saved status for $count recipes');
  }

  @override
  Widget build(BuildContext context) {
    updateSavedStatus(savedRecipes, widget.recipeList);
    return SliverList(
      delegate: widget.recipeList.isNotEmpty
          ? SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Recipe recipe = widget.recipeList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onSelectRecipeItem(index),
                      child: RecipeCard(
                        imageLink: recipe.image,
                        title: recipe.title,
                        ingredients: recipe.ingredients,
                        time: recipe.time,
                        isSaved: recipe.isSaved,
                        onClickSaveRecipe: () {
                          setState(() {
                            updateSaveStatus(recipe);
                          });
                        },
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
