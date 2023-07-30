import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) => const BookListViewItem(),
        childCount: 10,
      ),
    );
  }
}

