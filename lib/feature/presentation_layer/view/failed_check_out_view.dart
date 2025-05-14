import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/appbar_title_arrow.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class FailedCheckOutView extends StatelessWidget {
  const FailedCheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10.h),
            AppbarTitleArrow(text: TitlesSubtitle.checkoutTitle),
            Divider(),
            SizedBox(height: 120.h),
            Image.asset('assets/images/ops.png', width: 135.w, height: 121.h),
            SizedBox(height: 50.h),
            Text(
              TitlesSubtitle.checkoutSubFailedTitle,
              style: CustomAppText.font26BoldRed,
            ),
            SizedBox(height: 10.h),

            Text(
              TitlesSubtitle.checkoutMessageFFailed,
              style: CustomAppText.font16RegularLightGrey,
            ),
            SizedBox(height: 100.h),
            AppTextBtn(
              text: 'Back',
              color: CustomAppColors.red,
              isEnable: true,
            ),
          ],
        ),
      ),
    );
  }
}
