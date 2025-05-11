import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class CustomAppText {
  static TextStyle title = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle btnStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'TitilliumWeb',
  );

  static TextStyle font22BoldGreen = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.darkblue,
    fontFamily: 'Poppins',
  );
  static TextStyle font16RegularLightGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: CustomAppColors.lightGrey,

    fontFamily: 'Poppins',
  );
}
