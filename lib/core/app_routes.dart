import 'package:go_router/go_router.dart';

import '../features/home_view/presentation/views/book_details_view.dart';
import '../features/home_view/presentation/views/home_view_screen.dart';
import '../features/splash_view/presentation/views/splash_view_screen.dart';

abstract class AppRoutes {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashViewScreen(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
