import 'package:financeapp/core/utils/app_color.dart';
import 'package:financeapp/core/utils/app_fonts.dart';
import 'package:financeapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.praimaryColor,
    scaffoldBackgroundColor: AppColor.whiteColor,
    fontFamily: AppFonts.mainFont,
    textTheme: TextTheme(
      titleLarge: AppStyles.praimaryHeadLineStyle,
      titleMedium: AppStyles.subTitleStyles,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.praimaryColor,
      disabledColor: AppColor.secondaryColor,
    ),
  );
}
