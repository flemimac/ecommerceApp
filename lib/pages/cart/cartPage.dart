import 'package:flutter/material.dart';

import '../../designs/designs.dart';

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
          SafeArea(
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
                        'Add address',
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
                            child: geoWhiteIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
              // padding: EdgeInsets.only(left: 33, top: 80, right: 33),
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
                          _listItem(),
                          _listItem(),
                          _listItem(),
                          _listItem(),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          spacing: 12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                letterSpacing: -0.33,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Delivery',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                letterSpacing: -0.33,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          spacing: 12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$6,000 us',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                letterSpacing: -0.33,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                letterSpacing: -0.33,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 44, vertical: 20),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 110, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightOrangeColor,
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            letterSpacing: -0.33,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 45),
      height: 88,
      child: Row(
        spacing: 17,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/samsungUltra-small.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 153,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  child: Text(
                    'Galaxy Note 20 Ultra',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: -0.33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '\$3000.00',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: -0.33,
                    color: lightOrangeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 68,
            width: 26,
            padding: EdgeInsets.only(top: 14, right: 8, bottom: 8, left: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Color(0xFF282843),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    print('minus tap');
                  },
                  child: minusIcon,
                ),
                Text(
                  '2',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: -0.33,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('plus tap');
                  },
                  child: plusIcon,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('crash tap');
            },
            child: crashIcon,
          ),
        ],
      ),
    );
  }
}
