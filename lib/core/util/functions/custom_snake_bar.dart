import 'package:flutter/material.dart';

void customSnakeBar(context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
      ),
    ),
  );
}
