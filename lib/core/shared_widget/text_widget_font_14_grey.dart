import 'package:flutter/material.dart';

import 'package:puresoftinternproject/core/styles/custom_app_text.dart';

class TextWidgetFont14Grey extends StatelessWidget {
  final String text;
  const TextWidgetFont14Grey({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomAppText.font14RegularLightGrey,
      textAlign: TextAlign.start,
    );
  }
}
