import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/app_bar_title_widget.dart';

class AppbarTitleArrow extends StatelessWidget {
  final String text;
  const AppbarTitleArrow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 12.w),
        Container(
          padding: EdgeInsets.all(10),
          width: 50.w,
          height: 50.h,
          child: Image.asset('assets/images/IconArrowBack.png'),
        ),
        SizedBox(width: 110.w),

        AppBarTitleWidget(text: text),
      ],
    );
  }
}
