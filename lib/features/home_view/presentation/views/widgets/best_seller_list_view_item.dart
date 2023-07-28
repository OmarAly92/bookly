import 'package:bookly/core/assets_data.dart';
import 'package:bookly/core/constants.dart';
import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          const SizedBox(height: 22),
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

                const SizedBox(width: 30),
                SizedBox(
                  width: 200.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kFontGtSectraFine),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'J.K Rawling',
                        style: Styles.textStyle14.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            '19.99 E',
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
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
          ),
        ],
      ),
    );
  }
}