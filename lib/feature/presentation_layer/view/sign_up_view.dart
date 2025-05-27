import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/shared_widget/arrow_back_widget.dart';
import 'package:puresoftinternproject/core/shared_widget/phone_field_widget.dart';
import 'package:puresoftinternproject/core/shared_widget/text_btn_icon.dart';
import 'package:puresoftinternproject/core/shared_widget/text_widget_font_14_grey.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/order_tracking_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomAppColors.white,
        body: OrientationBuilderWidget(
          portraitBuilder: (context) => buildLayout(context),
          landscapeBuilder: (context) => buildLayout(context),
        ),
      ),
    );
  }
}

Widget buildLayout(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SizedBox(width: 35.w), ArrowBackWidget()],
        ),
        SizedBox(height: 60.h),
        Text(TitlesSubtitle.title, style: CustomAppText.font42BoldGreen),
        SizedBox(height: 10.h),
        Text(TitlesSubtitle.signUpTitle, style: CustomAppText.font28BoldBlack),
        SizedBox(height: 60.h),
        Padding(
          padding: EdgeInsets.only(right: 250.w, bottom: 2.h),
          child: TextWidgetFont14Grey(text: 'Full Name *'),
        ),
        AppTextField(maxLine: 1),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.only(right: 220.w, bottom: 2.h),
          child: TextWidgetFont14Grey(text: 'Phone Number *'),
        ),
        PhoneInputWidget(),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(right: 250.w, bottom: 2.h),
          child: TextWidgetFont14Grey(text: 'Password *'),
        ),
        AppTextField(maxLine: 1),
        SizedBox(height: 50.h),
        AppTextBtn(
          text: 'Sign Up',
          color: CustomAppColors.deepGreen,
          isEnable: true,
          onPressd: () {
            Navigator.pushReplacementNamed(context, Routes.navBarView);
          },
        ),
        SizedBox(height: 50.h),
        RichText(
          text: TextSpan(
            text: TitlesSubtitle.alreadyHaveAccount,
            style: CustomAppText.font16RegularLightGrey,
            children: <TextSpan>[
              TextSpan(
                text: 'Login',
                style: CustomAppText.font18BoldLightBlue,
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.loginView,
                        );
                      },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
