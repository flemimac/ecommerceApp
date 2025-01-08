import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import 'widgets/widgets.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isContainerVisible = false;

  void _toggleContainer() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
    });
    print('toggle');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: backgroundColor,
        title: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFFFF6E4E),
                ),
                Text(
                  'Zihuatanejo, Gro',
                  style: appBarTextStyle,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  _toggleContainer();
                },
                child: Icon(Icons.filter_alt_outlined),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: EdgeInsets.all(15),
              children: [
                Column(
                  spacing: 30,
                  children: <Widget>[
                    SelectCategory(),
                    SearchBarWidget(),
                    HotSales(),
                    BestSeller(),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: darkBlueColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explorer',
                      style: TextStyle(
                          color: otherColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: -0.33),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/mycart');
                      },
                      child: bagIcon,
                    ),
                    InkWell(
                      onTap: () {},
                      child: heartOutlinedBottomNavIcon,
                    ),
                    InkWell(
                      onTap: () {},
                      child: mineIcon,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_isContainerVisible) FilterWidget(onToggle: _toggleContainer),
        ],
      ),
    );
  }
}
