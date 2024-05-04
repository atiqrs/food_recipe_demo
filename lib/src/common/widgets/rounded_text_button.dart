import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';

enum CustomButtonStyle {
  deepBig,
  lightBig,
}

extension GetCustomButtonStyles on CustomButtonStyle {
  ButtonStyle getButtonStyle(BuildContext context) {
    switch (this) {
      case CustomButtonStyle.deepBig:
        return AppStyles.deepBigButtonStyle(context);
      case CustomButtonStyle.lightBig:
        return AppStyles.lightBigButtonStyle(context);

      default:
        return AppStyles.deepBigButtonStyle(context);
    }
  }
}

class RoundedTextButton extends StatelessWidget {
  final GestureTapCallback? onPressed;
  final Widget child;
  final CustomButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final bool enabled;

  const RoundedTextButton({
    Key? key,
    required this.onPressed,
    this.style = CustomButtonStyle.lightBig,
    this.padding,
    required this.child,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Opacity(
        opacity: enabled ? 1 : 0.4,
        child: TextButton(
          onPressed: enabled ? onPressed : () {},
          style: enabled ? AppStyles.deepBigButtonStyle(context) : AppStyles.lightBigButtonStyle(context),
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
