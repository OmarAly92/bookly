import 'package:bookly/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash_view/presentation/views/splash_view_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackGroundColor,
      ),
      home: const SplashViewScreen(),
    );
  }
}
