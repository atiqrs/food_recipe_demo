import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/error/error.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/widgets/image_with_caption_body.dart';

class GenericErrorScreen extends StatelessWidget {
  final AppError error;
  final VoidCallback? onButtonPressed;
  final bool showBack;
  final String? screenTitle;

  const GenericErrorScreen({
    Key? key,
    required this.error,
    this.onButtonPressed,
    this.showBack = false,
    this.screenTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NetworkErrorScreen(
      error: error,
      onButtonPressed: onButtonPressed,
      showBack: showBack,
      title: screenTitle,
    );
  }
}

class NetworkErrorScreen extends StatelessWidget {
  final AppError error;
  final VoidCallback? onButtonPressed;
  final bool showBack;
  final String? title;

  const NetworkErrorScreen({
    Key? key,
    required this.error,
    this.onButtonPressed,
    this.showBack = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showBack ? AppBar(title: Text(title!)) : null,
      body: _buildNetworkErrorWidget(),
    );
  }

  _buildNetworkErrorWidget() {
    return Center(
      child: ImageWithCaptionBody(
          image: AppAssets.iconCross,
          subtitle: error.errorMessage,
          title: AppStrings.defaultErrorScreenTitle,
          buttonLabel: AppStrings.tryAgain,
          bottomPadding: AppDimens.spacing10,
          onButtonPressed: onButtonPressed),
    );
  }
}
