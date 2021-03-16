import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle hint() {
    return TextStyle(
      color: AppColors.grey,
      fontSize: ScreenUtil().setSp(16),
    );
  }

  static TextStyle blackHeading() {
    return TextStyle(
      fontSize: ScreenUtil().setSp(22),
      fontFamily: AppFontFamilies.timesnewroman,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle dayDate() {
    return TextStyle(
      fontFamily: AppFontFamilies.quicksand,
      color: AppColors.grey,
      fontSize: ScreenUtil().setSp(14),
    );
  }

  static TextStyle blackMainHeading() {
    return TextStyle(
      fontFamily: AppFontFamilies.timesnewroman,
      fontWeight: FontWeight.bold,
      fontSize: ScreenUtil().setSp(30),
    );
  }

  static TextStyle whiteHeading() {
    return TextStyle(
      fontFamily: AppFontFamilies.timesnewroman,
      fontSize: ScreenUtil().setSp(25),
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle regularQuickSandFont() {
    return TextStyle(fontFamily: AppFontFamilies.quicksand);
  }

  static TextStyle mealName() {
    return TextStyle(
      fontFamily: AppFontFamilies.quicksand,
      fontWeight: FontWeight.w900,
      fontSize: ScreenUtil().setSp(14),
    );
  }

  static TextStyle chiefName() {
    return TextStyle(
      fontFamily: AppFontFamilies.quicksand,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    );
  }
}
