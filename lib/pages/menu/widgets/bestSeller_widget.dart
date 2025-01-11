import 'package:flutter/material.dart';

import '../../../designs/designs.dart';
import '../../../models/phone.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  final phoneList = Phone.phoneList();

  void _flagToggle(Phone phone) {
    setState(() {
      phone.isFavorite = !phone.isFavorite;
    });
    print('flag toggle');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Seller',
              style: headMenuTextStyle,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Text(
                'see more',
                style: bodyMenuTextStyle,
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [for (Phone phone in phoneList) _gridTile(context, phone)],
        ),
        SizedBox(
          height: 60,
        )
      ],
    );
  }

  Widget _gridTile(BuildContext context, Phone phone) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 227,
      width: 181,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: otherColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          print('Detalis widget ');
          Navigator.pushNamed(context, '/detalis');
        },
        child: Stack(
          children: [
            phone.image,
            Positioned(
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 7,
                    children: [
                      Text(
                        phone.newPrice,
                        style: newPriceTextStyle,
                      ),
                      Text(
                        phone.oldPrice,
                        style: oldPriceTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    phone.name,
                    style: descProductTextStyle,
                  )
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: otherColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    _flagToggle(phone);
                  },
                  child: Center(
                    child: phone.isFavorite ? heartIcon : heartOutlinedIcon,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
