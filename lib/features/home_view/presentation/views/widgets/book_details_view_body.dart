import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/book_model.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.books}) : super(key: key);
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(bookData: books),
                 Expanded(
                  child: SizedBox(
                    height: 20.h,
                  ),
                ),
                const SimilarBooksSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
