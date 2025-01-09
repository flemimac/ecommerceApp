import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import '../../../models/category.dart';

class SelectCategory extends StatelessWidget {
  SelectCategory({super.key});

  final categoryList = Category.categoryList();

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
              style: headMenuTextStyle,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Text(
                'view all',
                style: bodyMenuTextStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (Category category in categoryList) _listItem(category),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItem(Category category) {
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
              child: Center(child: category.icon),
            ),
          ),
          Text(
            category.name,
            style: itemCategoryTextStyle,
          )
        ],
      ),
    );
  }
}
