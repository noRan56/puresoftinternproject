import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
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
      padding: EdgeInsets.only(left: 40.w, right: 20.w, top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          AppbarTitleArrow(text: 'Contact Us'),
          Divider(),

          TextWidgetFont14Grey(text: 'Name'),
          SizedBox(height: 10.h),

          AppTextField(maxLine: 1),
          SizedBox(height: 25.h),
          TextWidgetFont14Grey(text: 'Mobile Number'),
          SizedBox(height: 10.h),
          AppTextField(maxLine: 1),
          SizedBox(height: 25.h),
          TextWidgetFont14Grey(text: 'Message'),
          SizedBox(height: 10.h),
          AppTextField(maxLine: 7),
          SizedBox(height: 30.h),

          AppTextBtn(
            text: 'Submit',
            color: CustomAppColors.deepGreen,
            isEnable: true,
            onPressd: () {},
          ),
          SizedBox(height: 25.h),
          SocialMediaIcon(),
        ],
      ),
    ),
  );
}
