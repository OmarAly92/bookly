import 'package:bookly/core/util/app_routes.dart';
import 'package:bookly/features/home_view/presentation/state_management/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/book_model.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.books});

  final BookModel books;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.books.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        GoRouter.of(context).go(AppRoutes.homeView);
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsViewBody(books: widget.books),
        ),
      ),
    );
  }
}
