import 'package:bookly/core/assets_data.dart';
import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 125,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage(AssetsData.testNetworkImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(
                //       width: 200,
                //       child: const Text(
                //         'Harry Potter and the Goblet of Fire',
                //         maxLines: 2,
                //         overflow: TextOverflow.ellipsis,
                //         style: TextStyle(fontSize: 20),
                //       ),
                //     ),
                //     const Text('J.K Rowling'),
                //     const Row(
                //       children: [
                //         Text('19.99 E'),
                //         Row(
                //           children: [
                //             Icon(Icons.star, color: Colors.yellow),
                //             Text('4.8 (2390)')
                //           ],
                //         )
                //       ],
                //     )
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
