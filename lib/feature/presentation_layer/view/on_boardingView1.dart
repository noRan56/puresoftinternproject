import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/helpers/extention.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/core/shared_widget/app_btns_onboarding.dart';
import 'package:puresoftinternproject/core/shared_widget/on_borading_text.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view/sign_up_view.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/on_boarding_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '';

class OnBoardingview1 extends StatefulWidget {
  const OnBoardingview1({super.key});

  @override
  State<OnBoardingview1> createState() => _OnBoardingview1State();
}

class _OnBoardingview1State extends State<OnBoardingview1> {
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
  final controller = OnboardingViewModel();
  final pageController = PageController();
  final int totalPages = 3;
  return PageView(
    controller: pageController,
    children: List.generate(totalPages, (index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(controller.items[index].image),
                width: 285.w,
                height: 273.h,
                fit: BoxFit.contain,
              ),

              SizedBox(height: 15),

              OnBoradingText(text: controller.items[index].title),
              SizedBox(height: 15.h),
              Text(
                controller.items[index].descriptions,
                style: CustomAppText.font16RegularLightGrey,
              ),
            ],
          ),
          SizedBox(height: 30.h),
          SmoothPageIndicator(
            controller: pageController,
            count: totalPages,
            effect: WormEffect(
              dotHeight: 12.h,
              dotWidth: 11.w,
              activeDotColor: CustomAppColors.deepGreen,
            ),
          ),
          SizedBox(height: 70.h),
          if (index == 0 || index == 1) AppBtnsOnboarding(text: 'Next'),
          if (index == (totalPages - 1))
            GestureDetector(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('onBoardingViewed', true);
                Navigator.pushReplacementNamed(
                  context,
                  Routes.signInLoginInView,
                );
              },

              child: AppBtnsOnboarding(text: 'Get Started'),
            ),
        ],
      );
    }),

    //
  );
}
