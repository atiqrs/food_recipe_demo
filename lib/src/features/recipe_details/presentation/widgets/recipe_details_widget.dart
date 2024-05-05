import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/widgets/ingredients_card_widget.dart';

class RecipeDetailsWidget extends StatelessWidget {
  const RecipeDetailsWidget({super.key, required this.recipeDetailsModel});

  final RecipesDetailsResponseModel recipeDetailsModel;

  @override
  Widget build(BuildContext context) {
    String imageUrl = recipeDetailsModel.image ?? '';
    return Stack(
      children: [
        Container(
          height: AppDimens.cardHeightBig,
          decoration: ShapeDecoration(
            color: AppColors.primaryColorTransparent15,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: AppDimens.borderSideWidth,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: AppColors.background,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppDimens.borderRadius12),
                bottomRight: Radius.circular(AppDimens.borderRadius12),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: AppDimens.spacing200),
              IngredientsCardWidget(
                title: recipeDetailsModel.title!,
                time: recipeDetailsModel.readyInMinutes!,
                ingredientsList: recipeDetailsModel.extendedIngredients!,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteBgFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: AppDimens.radius15,
                      blurRadius: AppDimens.radius10,
                      offset: Offset(AppDimens.offset0, AppDimens.borderRadius10),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteBgFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: AppDimens.radius15,
                      blurRadius: AppDimens.radius15,
                      offset: Offset(AppDimens.offset0, AppDimens.offset1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.spacing20),
            ],
          ),
        ),
        Positioned(
          top: AppDimens.spacing10,
          left: AppDimens.spacing10,
          child: IconButton(
            icon: SvgPicture.asset(AppAssets.iconCross),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Positioned(
          top: AppDimens.spacing10,
          right: AppDimens.spacing10,
          child: IconButton(
            icon: SvgPicture.asset(AppAssets.iconBookmarkUnFill),
            onPressed: () {
              //TODO: Implement save options clicked');
            },
          ),
        ),
      ],
    );
  }
}
