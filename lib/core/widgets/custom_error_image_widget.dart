import 'package:flutter/material.dart';

class CustomErrorImageWidget extends StatelessWidget {
  const CustomErrorImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: const Icon(
        Icons.error_outline,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}

