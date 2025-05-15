import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/shared_widget/app_social_media_sign_btn.dart';
import 'package:puresoftinternproject/core/shared_widget/text_btn_icon.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class SignInLoginInView extends StatelessWidget {
  const SignInLoginInView({super.key});

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
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(height: 10.h),
          Text(TitlesSubtitle.subtitle, style: CustomAppText.font28BoldBlack),
          SizedBox(height: 100.h),
          AppSocialMediaSignBtn(
            iconName: 'IconlocalPhone',
            text: 'Sign in with Phone Number',
          ),
          SizedBox(height: 21.h),
          AppSocialMediaSignBtn(
            iconName: 'signInGoogleIcon',
            text: 'Sign in with Google',
          ),
          SizedBox(height: 21.h),
          AppSocialMediaSignBtn(
            iconName: 'signInFaceBookIcon',
            text: 'Sign in with FaceBook',
            isEnable: true,
          ),
          SizedBox(height: 41.h),
          Padding(
            padding: EdgeInsets.only(left: 120.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(TitlesSubtitle.haveAccount),
                TextBtnIcon(text: 'Sign In', onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(TitlesSubtitle.agreeOfTerms),
                TextBtnIcon(
                  text: 'Terms of service\n ${TitlesSubtitle.termsOfService}',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
