import 'package:flutter/material.dart';

import '../../designs/designs.dart';
import 'widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        spacing: 45,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarCart(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              'My Cart',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w700,
                fontSize: 35,
                letterSpacing: -0.33,
                color: darkBlueColor,
              ),
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
                          ItemList(),
                          ItemList(),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.25),
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 10),
                    child: InfoCart(),
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 44, vertical: 20),
                    child: ButtonCart(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
