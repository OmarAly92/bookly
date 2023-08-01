import 'package:bookly/core/util/app_routes.dart';
import 'package:bookly/core/util/assets_data.dart';
import 'package:bookly/core/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
      actionWidget: IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRoutes.searchView);
        },
        icon: const Icon(
          CupertinoIcons.search,
          size: 28,
        ),
      ),
    );
  }
}
