import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/shared_widget/phone_field_widget.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TitlesSubtitle.title),
              SizedBox(height: 50.h),
              PhoneInputWidget(),
              SizedBox(height: 30.h),
              AppTextField(
                controller: TextEditingController(),
                hintText: 'Password',
              ),
              SizedBox(height: 50.h),
              AppTextBtn(
                text: 'Login',
                color: CustomAppColors.deepGreen,
                isEnable: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
