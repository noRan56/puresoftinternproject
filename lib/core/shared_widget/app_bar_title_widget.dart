import 'package:flutter/widgets.dart';
import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String text;
  const AppBarTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: CustomAppText.font24BoldGreen);
  }
}
