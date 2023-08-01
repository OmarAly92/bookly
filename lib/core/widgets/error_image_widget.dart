import 'package:flutter/material.dart';

class ErrorImageWidget extends StatelessWidget {
  const ErrorImageWidget({
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

