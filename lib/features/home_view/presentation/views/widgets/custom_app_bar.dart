import 'package:bookly/core/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 80.w,
              height: 40.h,
              child: Image.asset(AssetsData.logoImage)),
          const Icon(CupertinoIcons.search, size: 30),
        ],
      ),
    );
  }
}
