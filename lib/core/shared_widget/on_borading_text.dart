import 'package:flutter/material.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class OnBoradingText extends StatelessWidget {
  final String text;
  const OnBoradingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: CustomAppText.font22BoldGreen);
  }
}
