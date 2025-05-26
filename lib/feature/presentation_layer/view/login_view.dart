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

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
    child: Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [SizedBox(width: 35.w), ArrowBackWidget()],
          ),
          SizedBox(height: 100.h),
          Text(TitlesSubtitle.title, style: CustomAppText.font42BoldGreen),
          SizedBox(height: 20.h),
          Text(
            TitlesSubtitle.signInTitle,
            style: CustomAppText.font28BoldBlack,
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.only(right: 210.w),
            child: TextWidgetFont14Grey(text: 'Phone Number *'),
          ),
          PhoneInputWidget(),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(right: 250.w),
            child: TextWidgetFont14Grey(text: 'Password *'),
          ),
          AppTextField(
            // controller: TextEditingController(),
            hintText: 'Password',
            maxLine: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextBtnIcon(
                text: TitlesSubtitle.forgetPasswordTitle,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.forgetPasswordView);
                },
              ),
              SizedBox(width: 40.w),
            ],
          ),
          SizedBox(height: 5.h),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.navBarView);
            },
            child: AppTextBtn(
              text: 'Login',
              color: CustomAppColors.deepGreen,
              isEnable: true,
              onPressd: () {},
            ),
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.only(left: 50.w),
            child: RichText(
              text: TextSpan(
                text: TitlesSubtitle.dontHaveAccount,
                style: CustomAppText.font16RegularLightGrey,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign Up',
                    style: CustomAppText.font18BoldLightBlue,
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(
                              context,
                              Routes.signUpView,
                            );
                          },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
