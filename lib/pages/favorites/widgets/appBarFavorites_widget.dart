import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class AppBarFavorites extends StatelessWidget {
  const AppBarFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Row(
              spacing: 10,
              children: [
                Text(
                  'All delete',
                  style: titleMyFavoritesTextStyle,
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
                      child: crashIcon,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
