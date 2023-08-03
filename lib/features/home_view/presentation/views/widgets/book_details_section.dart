import 'package:bookly/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';
import '../../../data/models/book_model.dart';
import 'box_action.dart';
import 'custom_book_data_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookData});

  final BookModel bookData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.w),
          child: CustomBookDataItem(
            bookData: bookData,
          ),
        ),
         SizedBox(
          height: 23.h,
        ),
        Text(
          bookData.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
         SizedBox(
          height: 6.h,
        ),
        Text(
          bookData.volumeInfo.authors!.join(' / '),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(
            color: kGreySubtitle,
            fontStyle: FontStyle.italic,
          ),
        ),
        //  SizedBox(
        //   height: 10.h,
        // ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   averageRating: 0,
        //   ratingCount: 0,
        // ),
         SizedBox(
          height: 37.h,
        ),
         BoxAction(bookData:bookData ),
      ],
    );
  }
}
