import 'package:bookly/core/util/app_routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_error_image_widget.dart';
import '../../../data/models/book_model.dart';

class CustomBookDataItem extends StatelessWidget {
  const CustomBookDataItem({
    super.key,
    required this.bookData,
  });

  final BookModel bookData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView, extra: bookData);
      },
      child: AspectRatio(
        aspectRatio: 5.9 / 8,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: bookData.volumeInfo.imageLinks!.thumbnail,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  const CustomErrorImageWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
