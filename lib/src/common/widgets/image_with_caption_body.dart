import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';
import 'package:food_recipe_demo/src/common/widgets/rounded_text_button.dart';

class ImageWithCaptionBody extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String? buttonLabel;
  final String? secondaryButtonLabel;
  final double? bottomPadding;
  final double horizontalPadding;
  final double imageSpacing;
  final double imageSize;
  final Widget? subtitleWidget;
  final VoidCallback? onButtonPressed;
  final VoidCallback? onSecondaryButtonPressed;

  const ImageWithCaptionBody({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.horizontalPadding = AppDimens.spacing48,
    this.imageSpacing = AppDimens.spacing14,
    this.secondaryButtonLabel,
    this.onButtonPressed,
    this.onSecondaryButtonPressed,
    this.subtitleWidget,
    this.buttonLabel,
    this.imageSize = AppDimens.connectionErrorImageSize,
    this.bottomPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPadding,
        right: horizontalPadding,
        bottom: bottomPadding ?? 0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            image,
            color: AppColors.primaryOrange,
            width: AppDimens.buttonWeight70,
            height: AppDimens.buttonHeight24,
          ),
          if (imageSpacing != 0) SizedBox(height: imageSpacing),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.title48BlackStyle,
          ),
          const SizedBox(height: AppDimens.spacing4),
          subtitleWidget ??
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: AppStyles.title16BlackStyle,
              ),
          buttonLabel != null
              ? Padding(
                  padding: const EdgeInsets.only(top: AppDimens.spacing24),
                  child: RoundedTextButton(
                    onPressed: () => onButtonPressed?.call(),
                    style: CustomButtonStyle.deepBig,
                    child: Text(
                      buttonLabel!,
                      style: AppStyles.buttonLabelBlackStyle,
                    ),
                  ),
                )
              : const SizedBox(height: AppDimens.textButtonHeight56),
          secondaryButtonLabel != null
              ? Padding(
                  padding: const EdgeInsets.only(top: AppDimens.spacing8),
                  child: RoundedTextButton(
                    onPressed: onSecondaryButtonPressed,
                    style: CustomButtonStyle.deepBig,
                    child: Text(secondaryButtonLabel!),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
