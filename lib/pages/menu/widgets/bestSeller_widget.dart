import 'package:ecommerce/designs/images.dart';
import 'package:flutter/material.dart';

import '../../../designs/colors.dart';
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
      child: InkWell(
        onTap: () {},
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
                        style: newPriceTextStyle,
                      ),
                      Text(
                        '\$1,500',
                        style: oldPriceTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    'Samsung Galaxy s20 Ultra',
                    style: descProductTextStyle,
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
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Center(
                      child: heartOutlinedIcon,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
