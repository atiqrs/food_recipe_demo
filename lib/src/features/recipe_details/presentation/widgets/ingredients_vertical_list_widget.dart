import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';

TextSpan verticalTextSpanFromArray(List<ExtendedIngredient>? items, int count) {
  List<TextSpan> spans = [];
  if (items != null) {
    for (var i = 0; i < items.length; i++) {
      var amount = items[i].amount ?? 0.00;
      var totalAmount = amount * count;

      String str = '${totalAmount.toStringAsFixed(1)} ${items[i].measures!.metric!.unitShort} - ${items[i].name.toString()}';
      spans.add(const TextSpan(
        text: AppStrings.orSymbleText,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textExtraBoldColorGray),
      ));
      spans.add(TextSpan(
        text: str,
        style: const TextStyle(fontWeight: FontWeight.normal, color: AppColors.textFilterColorBlack),
      ));
      if (i < items.length - 1) {
        spans.add(const TextSpan(text: '\n'));
      }
    }
    return TextSpan(children: spans);
  } else {
    return const TextSpan(children: []);
  }
}
