import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatelessWidget {
  final Widget Function(BuildContext context) portraitBuilder;
  final Widget Function(BuildContext context) landscapeBuilder;

  const OrientationBuilderWidget({
    Key? key,
    required this.portraitBuilder,
    required this.landscapeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return isPortrait ? portraitBuilder(context) : landscapeBuilder(context);
  }
}
