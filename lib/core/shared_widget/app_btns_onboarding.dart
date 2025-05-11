import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class AppBtnsOnboarding extends StatelessWidget {
  final String text;

  const AppBtnsOnboarding({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177.w,
      height: 51.h,

      decoration: BoxDecoration(
        color: CustomAppColors.deepGreen,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Center(child: Text(text, style: CustomAppText.btnStyle)),
    );
  }
}
