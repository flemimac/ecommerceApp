// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 45),
      height: 88,
      child: Row(
        spacing: 17,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/samsungUltra-small.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 153,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  child: Text(
                    'Galaxy Note 20 Ultra',
                    overflow: TextOverflow.clip,
                    style: titleItemMyFavoritesTextStyle,
                  ),
                ),
                Text(
                  '\$3000.00',
                  style: priceItemMyFavoritesTextStyle,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('crash tap');
            },
            child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: lightOrangeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: crashIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
