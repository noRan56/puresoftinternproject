import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/appbar_title_arrow.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class SuccessCheckOutView extends StatelessWidget {
  const SuccessCheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomAppColors.white,
        body: buildLayout(isPortrait, context),
      ),
    );
  }

  Widget buildLayout(bool isPortrait, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10.h),
          AppbarTitleArrow(text: TitlesSubtitle.checkoutTitle),
          const Divider(),
          SizedBox(height: 120.h),
          Image.asset(
            'assets/images/confiramOrder.png',
            width: 135.w,
            height: 121.h,
          ),
          SizedBox(height: 50.h),
          Text(
            TitlesSubtitle.checkoutSubConfirmedTitle,
            style: CustomAppText.font26BoldGreen,
          ),
          SizedBox(height: 10.h),
          Text(
            TitlesSubtitle.checkoutMessageConfirmed,
            style: CustomAppText.font16RegularLightGrey,
          ),
          SizedBox(height: 10.h),
          Text(
            TitlesSubtitle.checkoutMessageConfirmed1,
            style: CustomAppText.font16RegularLightGrey,
          ),
          SizedBox(height: 100.h),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.navBarView);
            },
            child: AppTextBtn(
              text: 'Continue Shopping',
              color: CustomAppColors.deepGreen,
              isEnable: true,
              onPressd: () {},
            ),
          ),
          SizedBox(height: 20.h),
          AppTextBtn(
            text: 'Track Order',
            color: CustomAppColors.deepGreen,
            isEnable: false,
            onPressd: () {},
          ),
        ],
      ),
    );
  }
}
