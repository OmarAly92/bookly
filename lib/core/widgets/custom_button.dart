import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.texColor,
    required this.borderRadius,
    required this.text,  this.fontSize,
  }) : super(key: key);

  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color texColor;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          backgroundColor: backgroundColor,

        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: texColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
