import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';

TextSpan textSpanFromArray(List<String> items) {
  List<TextSpan> spans = [];
  for (var i = 0; i < items.length; i++) {
    spans.add(TextSpan(
        text: items[i], style: const TextStyle(fontWeight: FontWeight.normal, color: AppColors.textFilterColorBlack)));
    if (i < items.length - 1) {
      spans.add(const TextSpan(
          text: ' | ', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textExtraBoldColorGray)));
    }
  }
  return TextSpan(children: spans);
}
