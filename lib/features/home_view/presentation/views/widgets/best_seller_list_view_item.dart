import 'package:bookly/core/util/app_routes.dart';
import 'package:bookly/core/widgets/custom_error_image_widget.dart';
import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../core/util/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookItem});

  final BookModel bookItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SizedBox(
        height: 130,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.bookDetailsView);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: bookItem.volumeInfo.imageLinks!.thumbnail,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        const CustomErrorImageWidget(),
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
                      bookItem.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kFontGtSectraFine),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookItem.volumeInfo.authors!.join(' / '),
                      style: Styles.textStyle14.copyWith(color: kGreySubtitle),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                          mainAxisAlignment: MainAxisAlignment.start,
                          averageRating: bookItem.volumeInfo.averageRating ?? 0,
                          ratingCount: bookItem.volumeInfo.ratingsCount ?? 0,
                        ),
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
