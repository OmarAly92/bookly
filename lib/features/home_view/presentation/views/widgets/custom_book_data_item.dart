import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomBookDataItem extends StatelessWidget {
  const CustomBookDataItem({
    super.key, required this.bookImage,
  });
 final String bookImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.w),
      child: AspectRatio(
        aspectRatio: 4.1/8,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image:  DecorationImage(
              image: NetworkImage(bookImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
