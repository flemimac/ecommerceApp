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
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: otherColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset('assets/images/samsungUltra.png'),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: otherColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Galaxy Note 20 Ultra',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            letterSpacing: -0.33,
                          ),
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
                    Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: heartOutlinedWhiteIcon,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Shop',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            letterSpacing: -0.33,
                          ),
                        ),
                        Text(
                          'Detalis',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            letterSpacing: -0.33,
                          ),
                        ),
                        Text(
                          'Features',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            processorIcon,
                            Text(
                              'Exynos 990',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            fotoIcon,
                            Text(
                              '108 + 12 mp',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ramIcon,
                            Text(
                              '8 GB',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            memomyIcon,
                            Text(
                              '256 GB',
                              style: TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
