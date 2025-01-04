import 'package:ecommerce/pages/detalis/detalisPage.dart';
import 'package:flutter/material.dart';

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
      },
      // home: MenuPage(),
    );
  }
}
