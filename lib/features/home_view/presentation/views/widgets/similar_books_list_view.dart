import 'package:bookly/core/widgets/custom_failure_widget.dart';
import 'package:bookly/core/widgets/custom_loading_horizontal.dart';
import 'package:bookly/features/home_view/presentation/state_management/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_data_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return  CustomLoadingHorizontal(numberOfItems: 5, scrollDirection:  Axis.horizontal, height: 180.h);
        } else if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 180.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookDataItem(
                  bookData: state.books[index],
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomFailureWidget(failureMessage: state.failureMessage);
        } else {
          return  CustomLoadingHorizontal(numberOfItems: 5, scrollDirection:  Axis.horizontal, height: 180.h);
        }
      },
    );
  }
}
