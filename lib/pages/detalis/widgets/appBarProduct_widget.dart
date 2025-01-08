import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class AppBarProduct extends StatelessWidget {
  const AppBarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: darkBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: otherColor,
                ),
              ),
            ),
          ),
          Text(
            'Product Detalis',
            style: titleProductDetalisTextStyle,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: lightOrangeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: bagIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
