import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/styles.dart';

class BestSellerTitle extends StatelessWidget {
  const BestSellerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
          child: Text(
            'Newest Books',
            style: Styles.textStyle18,
          ),
        ),
         SizedBox(height: 18.h),
      ],
    );
  }
}
