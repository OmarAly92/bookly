import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingNewestBooksShimmer extends StatelessWidget {
  const CustomLoadingNewestBooksShimmer({super.key, required this.numberOfItems});
  final int numberOfItems;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: numberOfItems,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
            baseColor: Colors.white10,
            highlightColor: Colors.white24,
            child:   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: SizedBox(
                height: 108.h,
                child: GestureDetector(
                  onTap: () {
                    // You can handle the onTap event for shimmer as well, if needed.
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 5.3 / 8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            color: Colors.white, // Shimmer effect will be applied to this container
                          ),
                        ),
                      ),
                       SizedBox(width: 25.w),
                      SizedBox(
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 16,
                              color: Colors.white, // Shimmer effect will be applied to this container
                            ),
                             SizedBox(height: 3.h),
                            Container(
                              width: double.infinity,
                              height: 14,
                              color: Colors.white, // Shimmer effect will be applied to this container
                            ),
                             SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 20,
                                  color: Colors.white, // Shimmer effect will be applied to this container
                                ),
                                // You can add more shimmer containers for other content here
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        );
      },
    );
  }
}
