// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  int? maxLine = 1;
  AppTextField({super.key, this.hintText, this.maxLine, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 51.h,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,

        cursorColor: Colors.white,
        maxLines: maxLine,

        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
