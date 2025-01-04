import 'package:ecommerce/designs/colors.dart';
import 'package:ecommerce/designs/images.dart';
import 'package:flutter/material.dart';

class DetalisPage extends StatelessWidget {
  const DetalisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: otherColor,
                    ),
                  ),
                ),
                Text(
                  'Product Detalis',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    letterSpacing: -0.33,
                  ),
                ),
                Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: bagIcon,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
