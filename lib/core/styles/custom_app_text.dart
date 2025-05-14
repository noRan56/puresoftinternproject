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
  static TextStyle font42BoldGreen = TextStyle(
    fontSize: 42.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.deepGreen,
    fontFamily: 'Poppins',
  );
  static TextStyle font24BoldGreen = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.deepGreen,
    fontFamily: 'Poppins',
  );
  static TextStyle font28BoldBlack = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.black,
    fontFamily: 'Poppins',
  );
  static TextStyle font26BoldRed = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.red,
    fontFamily: 'Poppins',
  );
  static TextStyle font26BoldGreen = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
    color: CustomAppColors.deepGreen,
    fontFamily: 'Poppins',
  );
  static TextStyle font16RegularLightGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: CustomAppColors.lightGrey,

    fontFamily: 'Poppins',
  );
  static TextStyle font14RegularLightGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: CustomAppColors.lightGrey,

    fontFamily: 'Poppins',
  );
}
