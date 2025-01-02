import 'package:ecommerce/designs/colors.dart';
import 'package:flutter/material.dart';

import '../../../designs/styles.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Seller',
              style: headTextStyle,
            ),
            Text(
              'see more',
              style: bodyTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 500,
          child: GridView.count(
            primary: false,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.85,
            children: [
              _gridTile(),
              _gridTile(),
              _gridTile(),
              _gridTile(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _gridTile() {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: otherColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Image.asset('assets/images/samsungGalaxyS20.png'),
          Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 7,
                  children: [
                    Text(
                      '\$1,047',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'MarkPro',
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      '\$1,500',
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'MarkPro',
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Samsung Galaxy s20 Ultra',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'MarkPro',
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: otherColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Icon(
                Icons.heart_broken_outlined,
                color: secondaryColor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
