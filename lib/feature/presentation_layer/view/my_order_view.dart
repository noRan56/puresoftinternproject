import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/constant/global_portrait.dart';
import 'package:puresoftinternproject/core/constant/titles_subtitle.dart';
import 'package:puresoftinternproject/core/routing/routes.dart';
import 'package:puresoftinternproject/core/shared_widget/appbar_title_arrow.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';
import 'package:puresoftinternproject/feature/presentation_layer/view_model/my_order_view_model.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

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

Widget buildLayout(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, Routes.profileView);
        },
        child: AppbarTitleArrow(text: TitlesSubtitle.myOrders),
      ),
      Divider(),
      SizedBox(height: 20.h),
      Expanded(child: MyOrderViewModel()),
    ],
  );
}
