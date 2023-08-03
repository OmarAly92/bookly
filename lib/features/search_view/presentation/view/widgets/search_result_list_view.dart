import 'package:bookly/core/widgets/custom_failure_widget.dart';
import 'package:bookly/core/widgets/custom_loading_newest_books_shimmer.dart';
import 'package:bookly/features/search_view/presentation/state_management/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home_view/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const CustomLoadingNewestBooksShimmer(numberOfItems: 5);
        } else if (state is SearchSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookListViewItem(bookData: state.books[index]);
            },
          );
        } else if (state is SearchDone) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            itemCount: state.result.length,
            itemBuilder: (context, index) {
              return BookListViewItem(bookData: state.result[index]);
            },
          );
        } else if (state is SearchFailure) {
          return CustomFailureWidget(failureMessage: state.failureMessage);
        } else {
          return const CustomLoadingNewestBooksShimmer(numberOfItems: 5);
        }
      },
    );
  }
}
