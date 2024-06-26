import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';

abstract class AppStyles {
  //text sizes
  static const textSize8 = 8.0;
  static const textSize10 = 10.0;
  static const textSize11 = 11.0;
  static const textSize12 = 12.0;
  static const textSize14 = 14.0;
  static const textSize16 = 16.0;
  static const textSize17 = 17.0;
  static const textSize18 = 18.0;
  static const textSize20 = 20.0;
  static const textSize22 = 22.0;
  static const textSize24 = 24.0;
  static const textSize28 = 28.0;
  static const textSize32 = 32.0;
  static const textSize36 = 36.0;
  static const textSize40 = 40.0;
  static const textSize48 = 48.0;

  //font families
  static const poppinsNormal = 'Poppins';
  static const jekoRegular = 'Jeko-Regular';
  static const jekoBold = 'Jeko-Bold';

  static const title16BlackStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
    fontWeight: FontWeight.w500,
    color: AppColors.textFilterColorBlack,
  );

  static const title18BlackStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize18,
    fontWeight: FontWeight.w500,
    color: AppColors.textFilterColorBlack,
  );

  static const title16BlueStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
    fontWeight: FontWeight.w600,
    color: AppColors.textExtraBoldColorGray,
  );

  static const title16OrangeStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
    fontWeight: FontWeight.w600,
    color: AppColors.textColorOrange,
  );

  static const title24BlackStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize24,
    fontWeight: FontWeight.w600,
    color: AppColors.textFilterColorBlack,
  );

  static const title32BlackStyle = TextStyle(
    color: AppColors.blackBg000000,
    fontSize: textSize32,
    fontFamily: jekoRegular,
  );

  static const title48BlackStyle = TextStyle(
    color: AppColors.blackBg000000,
    fontSize: textSize48,
    fontFamily: jekoRegular,
  );

  static const subTitle16BlackStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
    fontWeight: FontWeight.w400,
    color: AppColors.textFilterColorBlack,
  );

  static const buttonLabelBlackStyle = TextStyle(
    color: Color.fromARGB(255, 255, 255, 255),
    fontSize: textSize14,
    fontFamily: poppinsNormal,
  );

  static const valueStyle = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
    color: AppColors.textFilterColorBlack,
  );
  static const value14Style = TextStyle(
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize14,
    color: AppColors.textFilterColorBlack,
  );

  static const hintStyle = TextStyle(
    color: AppColors.textHintColorGray,
    fontFamily: AppStyles.poppinsNormal,
    fontSize: AppStyles.textSize16,
  );

  //button styles

  static ButtonStyle lightBigButtonStyle(BuildContext context) => TextButton.styleFrom(
        foregroundColor: AppColors.whiteBgFFFFFF,
        backgroundColor: AppColors.primaryGray,
        fixedSize: const Size.fromHeight(AppDimens.buttonHeight48),
        textStyle: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: AppColors.whiteBgFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius16),
        ),
      );

  static ButtonStyle deepBigButtonStyle(BuildContext context) => TextButton.styleFrom(
        foregroundColor: AppColors.whiteBgFFFFFF,
        backgroundColor: AppColors.primaryOrange,
        fixedSize: const Size.fromHeight(AppDimens.buttonHeight48),
        textStyle: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: AppColors.whiteBgFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius16),
        ),
      );

  //input borders
  static OutlineInputBorder transparentInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
