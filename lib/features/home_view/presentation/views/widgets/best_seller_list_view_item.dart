import 'package:bookly/core/app_routes.dart';
import 'package:bookly/core/assets_data.dart';
import 'package:bookly/core/constants.dart';
import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SizedBox(
        height: 125,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.bookDetailsView);
          },
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
                      style: Styles.textStyle14
                          .copyWith(color: kGreySubtitle),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 E',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const BookRating(mainAxisAlignment: MainAxisAlignment.start),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
