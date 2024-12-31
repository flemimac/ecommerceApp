import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
            Text('Zihuatanejo, Gro'),
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
          children: <Widget>[
            _selectCategory(),
          ],
        ),
      ),
    );
  }

  Widget _selectCategory() {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Category',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'view all',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xFFFF6E4E),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
              _listItem(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItem() {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 71,
              height: 71,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFFF6E4E),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                color: Colors.white,
                Icons.phone_android_outlined,
                size: 30,
              ),
            ),
          ),
          Text(
            'Phones',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xFFFF6E4E),
            ),
          )
        ],
      ),
    );
  }
}
