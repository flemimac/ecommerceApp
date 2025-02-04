import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class ButtonCart extends StatelessWidget {
  const ButtonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: lightOrangeColor,
      ),
      child: Center(
        child: Text(
          'Checkout',
          style: buttonMyCartTextStyle,
        ),
      ),
    );
  }
}
