import 'package:ecommerce/designs/colors.dart';
import 'package:flutter/material.dart';

import '../../../designs/styles.dart';

class HotSales extends StatelessWidget {
  const HotSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hot sales',
              style: headTextStyle,
            ),
            Text(
              'see more',
              style: bodyTextStyle,
            ),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/iphone12.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 14, left: 25),
              alignment: Alignment.centerLeft,
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: secondaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MarkPro',
                          letterSpacing: -0.33,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Iphone 12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MarkPro',
                          letterSpacing: -0.33,
                        ),
                      ),
                      Text(
                        'Súper. Mega. Rápido.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MarkPro',
                          letterSpacing: -0.33,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 110,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: otherColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      child: Text(
                        'Buy now!',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                          letterSpacing: -0.33,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
