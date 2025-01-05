import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import 'widgets/infoPanel_widget.dart';

class DetalisPage extends StatelessWidget {
  const DetalisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        spacing: 30,
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
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
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: otherColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 20,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset('assets/images/samsungUltra.png'),
          ),
          InfoPanel(),
        ],
      ),
    );
  }
}
