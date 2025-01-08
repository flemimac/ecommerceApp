import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class InfoCart extends StatelessWidget {
  const InfoCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: infoTitleMyCartTextStyle,
            ),
            Text(
              'Delivery',
              style: infoTitleMyCartTextStyle,
            ),
          ],
        ),
        Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$6,000 us',
              style: infoValueMyCartTextStyle,
            ),
            Text(
              'Free',
              style: infoValueMyCartTextStyle,
            ),
          ],
        )
      ],
    );
  }
}
