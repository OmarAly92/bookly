import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_newest_books_shimmer.dart';
import '../../state_management/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksLoading) {
            return const CustomLoadingNewestBooksShimmer(
              numberOfItems: 5,
            );
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
            return const CustomLoadingNewestBooksShimmer(
              numberOfItems: 5,
            );
          }
        },
      ),
    );
  }
}
