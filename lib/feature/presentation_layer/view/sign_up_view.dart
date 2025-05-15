import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/shared_widget/phone_field_widget.dart';
import 'package:puresoftinternproject/core/shared_widget/text_btn_icon.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/order_tracking_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilderWidget(
        portraitBuilder: (context) => buildLayout(),
        landscapeBuilder: (context) => buildLayout(),
      ),
    );
  }
}

Widget buildLayout() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 35.w),
            Image.asset(
              'assets/images/IconArrowBack.png',
              width: 14.w,
              height: 14.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(height: 100.h),
        Text(TitlesSubtitle.title, style: CustomAppText.font42BoldGreen),
        SizedBox(height: 10.h),
        Text(TitlesSubtitle.signUpTitle, style: CustomAppText.font28BoldBlack),
        SizedBox(height: 100.h),
        AppTextField(maxLine: 1),
        SizedBox(height: 20.h),
        PhoneInputWidget(),
        SizedBox(height: 10.h),
        AppTextField(maxLine: 1),
        SizedBox(height: 50.h),
        AppTextBtn(
          text: 'Sign Up',
          color: CustomAppColors.deepGreen,
          isEnable: true,
        ),
        SizedBox(height: 50.h),
        Text(
          TitlesSubtitle.alreadyHaveAccount,
          style: CustomAppText.font16RegularLightGrey,
        ),
        TextBtnIcon(text: 'Login', onPressed: () {}),
      ],
    ),
  );
}
