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
          CustomWidget1(),
        ],
      ),
    );
  }
}

class CustomWidget1 extends StatelessWidget {
  const CustomWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AssetsData.testImage,
                  height: 150,
                  width: 100,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: const Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Text('J.K Rowling'),
                    const Row(
                      children: [
                        Text('19.99 E'),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.8 (2390)')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
