import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/widgets/ingredients_list_widget.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.imageLink,
    required this.title,
    required this.ingredients,
    required this.time,
    required this.isSaved,
    required this.onClickSaveRecipe,
  });

  final String imageLink;
  final String title;
  final List<String> ingredients;
  final String time;
  final bool isSaved;
  final Function onClickSaveRecipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDimens.spacing18,
        left: AppDimens.spacing18,
        right: AppDimens.spacing18,
      ),
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              shadows: const [
                BoxShadow(
                  color: AppColors.whiteBgFFFFFF,
                ),
              ],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.borderRadius8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: AppDimens.bannerCardHeight,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageLink),
                      fit: BoxFit.cover,
                    ),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        width: AppDimens.borderSideWidth,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: AppColors.background,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppDimens.borderRadius8),
                        topRight: Radius.circular(AppDimens.borderRadius8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacing12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          title,
                          style: AppStyles.title16BlackStyle,
                        ),
                      ),
                      const SizedBox(width: AppDimens.spacing4),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: AppDimens.buttonHeight32,
                            child: SvgPicture.asset(AppAssets.iconClock),
                          ),
                          const SizedBox(width: AppDimens.spacing4),
                          Text(time),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacing12),
                  child: RichText(
                    text: textSpanFromArray(ingredients),
                  ),
                ),
                const SizedBox(height: AppDimens.spacing12)
              ],
            ),
          ),
          Positioned(
            top: AppDimens.spacing16,
            right: AppDimens.spacing18,
            child: GestureDetector(
              onTap: () => onClickSaveRecipe(),
              child: SizedBox(
                height: AppDimens.buttonHeight32,
                child: SvgPicture.asset(isSaved ? AppAssets.iconBookmarkFill : AppAssets.iconBookmarkUnFill,
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
