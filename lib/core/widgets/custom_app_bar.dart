import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
    required this.leadingWidget,
    required this.actionWidget,
  });

  final Widget leadingWidget;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [leadingWidget, actionWidget],
    );
  }
}
