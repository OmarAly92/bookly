import 'package:bookly/core/widgets/custom_failure_widget.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home_view/presentation/state_management/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksLoading) {
            return const CustomLoading();
          } else if (state is NewestBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return BookListViewItem(bookData: state.books[index]);
              },
            );
          } else if (state is NewestBooksFailure) {
            return CustomFailureWidget(failureMessage: state.failureMessage);
          } else {
            return const CustomLoading();
          }
        },
      ),
    );
  }
}
