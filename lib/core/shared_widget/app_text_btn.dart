import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class AppTextBtn extends StatelessWidget {
  final String text;
  final Color color;

  const AppTextBtn({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 51.h,
      padding: EdgeInsets.only(left: 20),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Center(child: Text(text, style: CustomAppText.btnStyle)),
    );
  }
}
