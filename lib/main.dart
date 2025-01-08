import 'package:flutter/material.dart';

import 'pages/favorites/favoritesPage.dart';
import 'pages/cart/cartPage.dart';
import 'pages/detalis/detalisPage.dart';
import 'pages/menu/menuPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(),
        '/detalis': (context) => DetalisPage(),
        '/mycart': (context) => CartPage(),
        '/myfavorites': (context) => FavoritesPage(),
      },
      // home: MenuPage(),
    );
  }
}
