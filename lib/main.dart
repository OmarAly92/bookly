import 'package:bookly/core/util/app_routes.dart';
import 'package:bookly/features/home_view/presentation/state_management/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/util/constants.dart';
import 'core/util/service_locator.dart';
import 'features/home_view/presentation/state_management/featured_books_cubit/featured_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(sl.get())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestBooksCubit(sl.get())..fetchNewestBooks()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRoutes.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
                // OpenUpwardsPageTransitionsBuilder
              pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()}),
              scaffoldBackgroundColor: kBackGroundColor,
              textTheme: GoogleFonts.montserratTextTheme(
                ThemeData.dark().textTheme,
              ),
            ),
          );
        },
      ),
    );
  }
}
