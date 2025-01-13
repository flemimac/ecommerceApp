import 'package:flutter/material.dart';

import '../../designs/designs.dart';
import '../../models/phone.dart';
import 'widgets/widgets.dart';

class FavoritesPage extends StatelessWidget {
  final List phoneList = Phone.phoneList();
  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        spacing: 45,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarFavorites(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              'My Favorites',
              style: headMyFavoritesTextStyle,
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: darkBlueColor,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 33, top: 80, right: 33),
                      child: ListView(
                        padding: EdgeInsets.all(0),
                        children: [
                          for (Phone phone in phoneList)
                            if (phone.isFavorite)
                              ItemList(
                                phone: phone,
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
