import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash_view/presentation/views/splash_view_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // theme: ThemeData.dark().,
      home: SplashViewScreen(),
    );
  }
}

