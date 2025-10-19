import 'package:financeapp/core/utils/app_color.dart';
import 'package:financeapp/core/utils/app_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle praimaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontWeight: FontWeight.bold,
    fontSize: 30.sp,
    color: AppColor.praimaryColor,
  );

  static TextStyle subTitleStyles = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColor.secondaryColor,
  );
  static TextStyle bkackStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColor.blackColor,
  );
  static TextStyle bkack15boldStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontWeight: FontWeight.bold,
    fontSize: 15,

    color: AppColor.blackBlue,
  );
}
