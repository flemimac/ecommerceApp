import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Category',
              style: headTextStyle,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Text(
                'view all',
                style: bodyTextStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItem() {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              width: 71,
              height: 71,
              decoration: BoxDecoration(
                color: lightOrangeColor,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(child: phonesIcon),
            ),
          ),
          Text(
            'Phones',
            style: categoryTextStyle,
          )
        ],
      ),
    );
  }
}
