import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class AppSocialMediaSignBtn extends StatelessWidget {
  final String iconName;
  final String text;
  final bool isEnable;
  const AppSocialMediaSignBtn({
    super.key,
    this.isEnable = false,
    required this.iconName,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 51.h,
      decoration: BoxDecoration(
        color: isEnable ? CustomAppColors.blue : CustomAppColors.white,
        borderRadius: BorderRadius.circular(25),
        border:
            isEnable
                ? Border.all(color: CustomAppColors.blue, width: 2)
                : Border.all(color: CustomAppColors.lightGrey, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/$iconName.png', width: 17.w, height: 17.h),
          SizedBox(width: 10.w),
          Text(text, style: CustomAppText.font16RegularLightGrey),
        ],
      ),
    );
  }
}
