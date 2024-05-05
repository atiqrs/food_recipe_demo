import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/widgets/ingredients_vertical_list_widget.dart';

class IngredientsCardWidget extends StatefulWidget {
  const IngredientsCardWidget({
    super.key,
    required this.title,
    required this.time,
    required this.ingredientsList,
  });

  final String title;
  final int time;
  final List<ExtendedIngredient>? ingredientsList;

  @override
  State<IngredientsCardWidget> createState() => _IngredientsCardWidgetState();
}

class _IngredientsCardWidgetState extends State<IngredientsCardWidget> {
  int count = 1;

  void incrementOrDecrementCount({bool isIncrement = true}) {
    if (isIncrement) {
      setState(() {
        count++;
      });
    } else {
      if (count > 1) {
        setState(() {
          count--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.only(
        top: AppDimens.spacing18,
        left: AppDimens.spacing18,
        right: AppDimens.spacing18,
      ),
      child: Container(
        decoration: const ShapeDecoration(
          color: AppColors.whiteBgFFFFFF,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimens.borderRadius16),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.spacing16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title, style: AppStyles.title18BlackStyle),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      SvgPicture.asset(AppAssets.iconClock),
                      const SizedBox(width: AppDimens.spacing4),
                      Text(AppStrings.timeSetup(widget.time)),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppStrings.ingredientsText, style: AppStyles.title16BlackStyle),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          incrementOrDecrementCount(isIncrement: false);
                        },
                      ),
                      const SizedBox(width: AppDimens.spacing4),
                      Text('$count'),
                      const SizedBox(width: AppDimens.spacing4),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          incrementOrDecrementCount();
                        },
                      ),
                    ],
                  ),
                ],
              ),
              RichText(
                textAlign: TextAlign.left,
                text: verticalTextSpanFromArray(widget.ingredientsList, count),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
