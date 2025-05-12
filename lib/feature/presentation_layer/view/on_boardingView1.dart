import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/app_btns_onboarding.dart';
import 'package:puresoftinternproject/core/shared_widget/on_borading_text.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/on_boarding_model.dart';

class OnBoardingview1 extends StatefulWidget {
  const OnBoardingview1({super.key});

  @override
  State<OnBoardingview1> createState() => _OnBoardingview1State();
}

class _OnBoardingview1State extends State<OnBoardingview1> {
  final controller = OnboardingViewModel();
  final pageController = PageController();
  final int totalPages = 3;

  @override
  Widget build(Object context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
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
                      width: 280.w,
                      height: 290.h,
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
                SizedBox(height: 15.h),
                if (index == 0 || index == 1) AppBtnsOnboarding(text: 'Next'),
                if (index == (totalPages - 1))
                  AppBtnsOnboarding(text: 'Get Started'),
              ],
            );
          }),

          //
        ),
      ),
    );
  }
}
