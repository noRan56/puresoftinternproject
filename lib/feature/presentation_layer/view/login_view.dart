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

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilderWidget(
          portraitBuilder: (context) => buildLayout(),
          landscapeBuilder: (context) => buildLayout(),
        ),
      ),
    );
  }
}

Widget buildLayout() {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 35.w),
              Image.asset(
                'assets/images/close.png',
                width: 14.w,
                height: 14.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: 100.h),
          Text(TitlesSubtitle.title, style: CustomAppText.font42BoldGreen),
          SizedBox(height: 50.h),
          PhoneInputWidget(),
          SizedBox(height: 30.h),
          AppTextField(
            controller: TextEditingController(),
            hintText: 'Password',
            maxLine: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextBtnIcon(
                text: TitlesSubtitle.forgetPasswordTitle,
                onPressed: () {},
              ),
              SizedBox(width: 40.w),
            ],
          ),
          SizedBox(height: 5.h),
          AppTextBtn(
            text: 'Login',
            color: CustomAppColors.deepGreen,
            isEnable: true,
          ),
        ],
      ),
    ),
  );
}
