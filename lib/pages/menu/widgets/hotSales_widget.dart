import 'package:ecommerce/designs/colors.dart';
import 'package:flutter/material.dart';

import '../../../designs/styles.dart';

class HotSales extends StatelessWidget {
  const HotSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hot sales',
              style: headTextStyle,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Text(
                'see more',
                style: bodyTextStyle,
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/iphone12.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: headSaleTextStyle,
                      ),
                      Text(
                        'Súper. Mega. Rápido.',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: bodySaleTextStyle,
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
                        style: buttonTextStyle,
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
