import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  final String name;
  const ImageWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$name.png',
      width: 48.w,
      height: 48.h,
      fit: BoxFit.cover,
    );
  }
}
