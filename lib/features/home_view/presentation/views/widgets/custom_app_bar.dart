import 'package:bookly/core/assets_data.dart';
import 'package:bookly/core/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCustomAppBar(
      leadingWidget: SizedBox(
        width: 80.w,
        height: 40.h,
        child: Image.asset(
          AssetsData.logoImage,
        ),
      ),
      actionWidget: const Icon(
        CupertinoIcons.search,
        size: 30,
      ),
      horizontal: 20,
      vertical: 0,
    );
  }
}
