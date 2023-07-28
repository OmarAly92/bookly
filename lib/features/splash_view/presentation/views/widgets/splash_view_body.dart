import 'package:bookly/core/assets_data.dart';
import 'package:bookly/core/constants.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logoImage),
        const Text('data',textAlign: TextAlign.center),
      ],
    );
  }
}
