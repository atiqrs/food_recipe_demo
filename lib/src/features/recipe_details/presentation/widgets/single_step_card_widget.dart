import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';

class SingleStepCard extends StatelessWidget {
  const SingleStepCard({
    super.key,
    required this.number,
    required this.description,
    this.imageUrl = '',
    this.stepBlueTitle = true,
  });

  final int number;
  final String description;
  final String imageUrl;
  final bool stepBlueTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.spacing18,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.screenBG,
          boxShadow: [
            BoxShadow(
              color: AppColors.screenBG,
              spreadRadius: AppDimens.radius0,
              blurRadius: AppDimens.radius0,
              offset: Offset(AppDimens.offset0, AppDimens.offsetReverse10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.stepNumber(number),
              style: stepBlueTitle ? AppStyles.title16BlueStyle : AppStyles.title16OrangeStyle,
            ),
            const SizedBox(height: AppDimens.spacing8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: AppStyles.value14Style,
                  ),
                ),
              ],
            ),
            imageUrl.isNotEmpty ? Image.network(AppStrings.mockRecipeImageLink) : const SizedBox(),
            const SizedBox(height: AppDimens.spacing20),
          ],
        ),
      ),
    );
  }
}
