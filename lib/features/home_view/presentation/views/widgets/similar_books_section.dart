import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
         SizedBox(
          height: 14.h,
        ),
        const SimilarBooksListView(),
         SizedBox(
          height: 14.h,
        ),
      ],
    );
  }
}

