import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';

customSnakeBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      text,
      textAlign: TextAlign.center,
    ),
    backgroundColor: AppColors.primaryGray,
    elevation: 10,
    behavior: SnackBarBehavior.fixed,
    dismissDirection: DismissDirection.down,
    duration: const Duration(seconds: 2),
  ));
}
