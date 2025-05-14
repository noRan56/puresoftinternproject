import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50.h),
            AppTextField(
              controller: TextEditingController(),
              hintText: 'Search',
              maxLine: 1,
            ),
            AppTextBtn(
              text: 'text',
              color: CustomAppColors.red,
              isEnable: true,
            ),
          ],
        ),
      ),
    );
  }
}
