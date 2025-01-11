import 'package:flutter/material.dart';

class Phone {
  String name;
  String oldPrice;
  String newPrice;
  Image image;
  bool isFavorite;

  Phone({
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.image,
    this.isFavorite = false,
  });

  static List<Phone> phoneList() {
    return [
      Phone(
        name: 'Samsung Galaxy s20 Ultra',
        oldPrice: '\$1,500',
        newPrice: '\$1,047',
        image: Image.asset('assets/images/samsungGalaxyS20.png'),
      ),
      Phone(
        name: 'Xiaomi Mi 10 Pro',
        oldPrice: '\$400',
        newPrice: '\$300',
        image: Image.asset('assets/images/xiaomiMi10Pro.png'),
      ),
      Phone(
        name: 'Samsung Note 20 Ultra',
        oldPrice: '\$1,500',
        newPrice: '\$1,047',
        image: Image.asset('assets/images/samsungNote20Ultra.png'),
      ),
      Phone(
        name: 'Motorola One Edge',
        oldPrice: '\$400',
        newPrice: '\$300',
        image: Image.asset('assets/images/motorolaOneEdge.png'),
      ),
    ];
  }
}
