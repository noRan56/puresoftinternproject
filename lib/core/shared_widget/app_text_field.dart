// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puresoftinternproject/core/styles/custom_app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLine;
  AppTextField({super.key, this.hintText, this.maxLine, this.controller});

  @override
  Widget build(BuildContext context) {
    final isSingleLine = maxLine == 1;
    return Container(
      width: 347.w,
      height: isSingleLine ? 51.h : 110.h,
      // padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isSingleLine ? 25 : 10),
      ),
      child: TextField(
        controller: controller,

        cursorColor: CustomAppColors.deepGreen,
        maxLines: maxLine,

        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(isSingleLine ? 25 : 10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(isSingleLine ? 25 : 10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(isSingleLine ? 25 : 10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          contentPadding:
              isSingleLine
                  ? EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)
                  : EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
        ),
      ),
    );
  }
}
