import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingHorizontal extends StatelessWidget {
  const CustomLoadingHorizontal({super.key, required this.numberOfItems, required this.scrollDirection, required this.height});
final int numberOfItems;
final Axis scrollDirection;
final double height;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: height,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: numberOfItems,
        scrollDirection: scrollDirection,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.white10,
            highlightColor: Colors.white24,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: AspectRatio(
                aspectRatio: 5.3 / 8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
