// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import '../../../models/phone.dart';

class ItemList extends StatelessWidget {
  final Phone phone;
  const ItemList({
    super.key,
    required this.phone,
  });

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
              child: phone.image,
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
                    phone.name,
                    overflow: TextOverflow.clip,
                    style: titleItemMyFavoritesTextStyle,
                  ),
                ),
                Text(
                  phone.newPrice,
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
