import 'package:bookly/core/constants.dart';
import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text('(245)', style: Styles.textStyle14.copyWith(color: kGreySubtitle)),
      ],
    );
  }
}