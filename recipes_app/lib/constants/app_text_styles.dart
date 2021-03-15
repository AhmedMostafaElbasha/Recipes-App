import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle hint() => TextStyle(color: AppColors.grey);

  static TextStyle blackHeading() {
    return TextStyle(
      fontSize: ScreenUtil().setSp(20),
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
}
