import 'package:bookly/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/util/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment, required this.averageRating, required this.ratingCount});

  final MainAxisAlignment mainAxisAlignment;

  final num averageRating;
  final num ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text('$averageRating', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text('($ratingCount)', style: Styles.textStyle14.copyWith(color: kGreySubtitle)),
      ],
    );
  }
}
