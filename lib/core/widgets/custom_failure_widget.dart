import 'package:flutter/material.dart';

import '../util/styles.dart';

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget({super.key, required this.failureMessage});

  final String failureMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failureMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
