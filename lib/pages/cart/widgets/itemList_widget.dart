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
                    style: titleItemMyCartTextStyle,
                  ),
                ),
                Text(
                  '\$3000.00',
                  style: priceItemMyCartTextStyle,
                ),
              ],
            ),
          ),
          Container(
            height: 68,
            width: 26,
            padding: EdgeInsets.only(top: 14, right: 8, bottom: 8, left: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Color(0xFF282843),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    print('minus tap');
                  },
                  child: minusIcon,
                ),
                Text(
                  '2',
                  style: counterItemMyCartTextStyle,
                ),
                InkWell(
                  onTap: () {
                    print('plus tap');
                  },
                  child: plusIcon,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('crash tap');
            },
            child: crashIcon,
          ),
        ],
      ),
    );
  }
}
