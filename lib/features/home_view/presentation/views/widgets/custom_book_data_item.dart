import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/error_image_widget.dart';

class CustomBookDataItem extends StatelessWidget {
  const CustomBookDataItem({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: AspectRatio(
        aspectRatio: 5.3 / 8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: 'imageUrl',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const ErrorImageWidget(),
          ),
        ),
      ),
    );
  }
}
