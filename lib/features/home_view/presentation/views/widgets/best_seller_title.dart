import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';

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
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 22),
      ],
    );
  }
}
