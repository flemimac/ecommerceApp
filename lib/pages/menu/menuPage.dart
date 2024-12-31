import 'package:flutter/material.dart';

import 'widgets/searchBar.dart';
import 'widgets/selectCategory.dart';

class MenuPage extends StatefulWidget {
  MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Color(0xFFFF6E4E),
            ),
            Text(
              'Zihuatanejo, Gro',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'MarkPro'),
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 30,
          children: <Widget>[
            SelectCategory(),
            SearchBarWidget(),
          ],
        ),
      ),
    );
  }
}
