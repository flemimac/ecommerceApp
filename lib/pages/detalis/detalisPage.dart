import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import 'widgets/widgets.dart';

class DetalisPage extends StatelessWidget {
  const DetalisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        spacing: 25,
        children: [
          AppBarProduct(),
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
