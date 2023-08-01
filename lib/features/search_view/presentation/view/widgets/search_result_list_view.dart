import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../home_view/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        List<BookModel>test = [];
        return  BookListViewItem(bookItem:test[0] );
      },
    );
  }
}