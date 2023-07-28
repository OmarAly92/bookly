import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
