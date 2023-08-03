import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/constants.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: kBackGroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Can\'t connect... check your internet',
              style: TextStyle(fontSize: 21.sp, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
