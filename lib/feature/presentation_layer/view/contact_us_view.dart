import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/core/shared_widget/app_bar_title_widget.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/app_text_field.dart';
import 'package:puresoftinternproject/core/shared_widget/appbar_title_arrow.dart';
import 'package:puresoftinternproject/core/shared_widget/social_media_icon.dart';
import 'package:puresoftinternproject/core/shared_widget/text_widget_font_14_grey.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/my_order_view_model.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomAppColors.white,
        body: OrientationBuilderWidget(
          landscapeBuilder: (context) => buildLayout(context),
          portraitBuilder: (context) => buildLayout(context),
        ),
      ),
    );
  }
}

Widget buildLayout(context) {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.only(right: 20.w, top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.navBarView);
            },
            child: AppbarTitleArrow(text: 'Contact Us'),
          ),
          Divider(),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(right: 250.w),
            child: TextWidgetFont14Grey(text: 'Name'),
          ),
          SizedBox(height: 10.h),

          AppTextField(maxLine: 1),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.only(right: 210.w),
            child: TextWidgetFont14Grey(text: 'Mobile Number'),
          ),
          SizedBox(height: 10.h),
          AppTextField(maxLine: 1),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.only(right: 250.w),
            child: TextWidgetFont14Grey(text: 'Message'),
          ),
          SizedBox(height: 10.h),
          AppTextField(maxLine: 7),
          SizedBox(height: 30.h),

          AppTextBtn(
            text: 'Submit',
            color: CustomAppColors.deepGreen,
            isEnable: true,
            onPressd: () {
              Navigator.pushReplacementNamed(context, Routes.navBarView);
            },
          ),
          SizedBox(height: 60.h),
          SocialMediaIcon(),
        ],
      ),
    ),
  );
}
