import 'package:flutter/material.dart';

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
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: -0.33,
                color: Colors.white,
              ),
            ),
            Text(
              'Delivery',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: -0.33,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$6,000 us',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w700,
                fontSize: 15,
                letterSpacing: -0.33,
                color: Colors.white,
              ),
            ),
            Text(
              'Free',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w700,
                fontSize: 15,
                letterSpacing: -0.33,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
