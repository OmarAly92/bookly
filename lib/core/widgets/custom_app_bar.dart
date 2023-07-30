import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
    required this.leadingWidget,
    required this.actionWidget,
    required this.horizontal,
    required this.vertical,
  });

  final Widget leadingWidget;
  final Widget actionWidget;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [leadingWidget, actionWidget],
      ),
    );
  }
}
