import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  List<bool> flagFavorites = List.generate(4, (index) => false);

  void _flagToogle(int index) {
    setState(() {
      flagFavorites[index] = !flagFavorites[index];
    });
    print('flag toogle');
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
          children: [
            _gridTile(context, 0),
            _gridTile(context, 1),
            _gridTile(context, 2),
            _gridTile(context, 3),
          ],
        ),
      ],
    );
  }

  Widget _gridTile(BuildContext context, int index) {
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
            Image.asset('assets/images/samsungGalaxyS20.png'),
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
                        '\$1,047',
                        style: newPriceTextStyle,
                      ),
                      Text(
                        '\$1,500',
                        style: oldPriceTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    'Samsung Galaxy s20 Ultra',
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
                      ]),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      _flagToogle(index);
                    },
                    child: Center(
                      child:
                          flagFavorites[index] ? heartIcon : heartOutlinedIcon,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
