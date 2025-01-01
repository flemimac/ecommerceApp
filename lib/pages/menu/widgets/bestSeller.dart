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
        // GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 10,
        //   crossAxisSpacing: 10,
        //   children: [
        //     _gridTile(),
        //     _gridTile(),
        //     _gridTile(),
        //     _gridTile(),
        //     _gridTile(),
        //   ],
        // ),
      ],
    );
  }

  Widget _gridTile() {
    return Container(
      height: 300,
      width: 180,
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
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              spacing: 5,
              children: [
                Image.asset('assets/images/samsungGalaxyS20.png'),
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
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 5, right: 5),
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
            )
          ],
        ),
      ),
    );
  }
}
