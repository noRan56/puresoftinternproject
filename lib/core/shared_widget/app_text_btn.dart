// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class AppTextBtn extends StatelessWidget {
  final String text;
  final Color color;
  final bool isEnable;

  const AppTextBtn({
    Key? key,
    required this.text,
    required this.color,
    required this.isEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 51.h,
      padding: EdgeInsets.only(left: 20),

      decoration: BoxDecoration(
        color: isEnable ? color : CustomAppColors.white,
        borderRadius: BorderRadius.circular(25),
        border:
            isEnable
                ? null
                : Border.all(color: CustomAppColors.deepGreen, width: 2),
      ),

      child: Center(
        child: Text(
          text,
          style: CustomAppText.btnStyle.copyWith(
            color:
                isEnable
                    ? CustomAppText.btnStyle.color
                    : CustomAppColors.deepGreen,
          ),
        ),
      ),
    );
  }
}
