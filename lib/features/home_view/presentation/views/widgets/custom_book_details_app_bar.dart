import 'package:bookly/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCustomAppBar(
      leadingWidget: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.close),
      ),
      actionWidget: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart_outlined),
      ),

    );
  }
}

