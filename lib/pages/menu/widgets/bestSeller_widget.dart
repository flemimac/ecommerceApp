import 'package:flutter/material.dart';

import '../../../designs/images.dart';
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
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            _gridTile(context),
            _gridTile(context),
            _gridTile(context),
            _gridTile(context),
          ],
        ),
      ],
    );
  }

  Widget _gridTile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 227,
      width: 181,
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
        onTap: () {
          print('Detalis widget ');
          Navigator.pushNamed(context, '/detalis');
        },
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
