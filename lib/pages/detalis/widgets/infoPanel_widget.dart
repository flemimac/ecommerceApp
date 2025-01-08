import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: otherColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _name(),
            _info(),
            _colorAndCapacity(),
            _button(),
          ],
        ),
      ),
    );
  }

  Widget _name() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Galaxy Note 20 Ultra',
              style: nameProductDelatisTextStyle,
            ),
            Wrap(
              spacing: 5,
              children: [
                starIcon,
                starIcon,
                starIcon,
                starIcon,
                starIcon,
              ],
            )
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
              color: darkBlueColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: heartOutlinedWhiteIcon,
            ),
          ),
        ),
      ],
    );
  }

  Widget _info() {
    return Column(
      spacing: 15,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Shop',
                style: selectedProductDelatisTextStyle,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Detalis',
                style: unselectedProductDelatisTextStyle,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Features',
                style: unselectedProductDelatisTextStyle,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 10,
              children: [
                processorIcon,
                Text(
                  'Exynos 990',
                  style: descProductDelatisTextStyle,
                ),
              ],
            ),
            Column(
              spacing: 10,
              children: [
                fotoIcon,
                Text(
                  '108 + 12 mp',
                  style: descProductDelatisTextStyle,
                ),
              ],
            ),
            Column(
              spacing: 10,
              children: [
                ramIcon,
                Text(
                  '8 GB',
                  style: descProductDelatisTextStyle,
                ),
              ],
            ),
            Column(
              spacing: 10,
              children: [
                memomyIcon,
                Text(
                  '256 GB',
                  style: descProductDelatisTextStyle,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _colorAndCapacity() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        Text(
          'Select color and capacity',
          style: TextStyle(
            fontFamily: 'MarkPro',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: -0.33,
            color: darkBlueColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 25,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    color: Color(0xFF772D03),
                  ),
                  child: Center(child: checkIcon),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    color: darkBlueColor,
                  ),
                  child: Center(child: Text('')),
                ),
              ],
            ),
            Row(
              spacing: 25,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightOrangeColor,
                    ),
                    child: Center(
                      child: Text(
                        '128 GB',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          letterSpacing: -0.33,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: otherColor,
                    ),
                    child: Center(
                      child: Text(
                        '256 GB',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          letterSpacing: -0.33,
                          color: Color(0xFF8D8D8D),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _button() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightOrangeColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add to Cart',
              style: buttonProductDetalisTextStyle,
            ),
            Text(
              '\$1,500.00',
              style: buttonProductDetalisTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
