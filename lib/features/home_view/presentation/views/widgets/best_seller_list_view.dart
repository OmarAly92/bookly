import 'package:flutter/material.dart';

import '../../../data/models/book_model.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        List<BookModel>test = [];

        return  BookListViewItem(bookData: test[0],);
      },
    );
  }
}

