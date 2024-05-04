import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';

class CustomCircularLoader extends StatelessWidget {
  const CustomCircularLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: AppDimens.buttonHeight48,
      width: AppDimens.buttonHeight48,
      child: CircularProgressIndicator(
        strokeWidth: AppDimens.loaderStrock,
        backgroundColor: AppColors.primaryOrange,
        color: AppColors.primaryGray,
      ),
    );
  }
}
