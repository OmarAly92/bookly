import 'package:bookly/core/util/service_locator.dart';
import 'package:bookly/features/home_view/presentation/state_management/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_view/data/models/book_model.dart';
import '../../features/home_view/presentation/views/book_details_view.dart';
import '../../features/home_view/presentation/views/home_view_screen.dart';
import '../../features/search_view/presentation/view/search_view.dart';
import '../../features/splash_view/presentation/views/splash_view_screen.dart';

abstract class AppRoutes {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
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
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(sl.get()),
              child:  BookDetailsView(books: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
