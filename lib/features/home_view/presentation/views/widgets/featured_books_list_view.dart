import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_horizontal.dart';
import '../../state_management/featured_books_cubit/featured_books_cubit.dart';
import 'custom_book_data_item.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key});

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return CustomLoadingHorizontal(height: 180.h, numberOfItems: 5, scrollDirection: Axis.horizontal);
        } else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 180.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookDataItem(bookData: state.books[index]);
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomFailureWidget(failureMessage: state.failureMessage);
        } else {
          return CustomLoadingHorizontal(height: 180.h, numberOfItems: 5, scrollDirection: Axis.horizontal);
        }
      },
    );
  }

}
