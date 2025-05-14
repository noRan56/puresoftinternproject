import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/shared_widget/image_widget.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264.w,
      height: 48.h,
      // padding: EdgeInsets.only(left: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(width: 10.w),
          ImageWidget(name: 'facebookIcon'),
          // SizedBox(width: 5.w),
          ImageWidget(name: 'instagramIcon'),
          // SizedBox(width: 5.w),
          ImageWidget(name: 'whatsAppIcon'),
          // SizedBox(width: 5.w),
          ImageWidget(name: 'youtubeIcon'),
        ],
      ),
    );
  }
}
