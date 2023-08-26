import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/pages/intro_page.dart';
import 'package:restaurant_app/pages/menu_page.dart';

import 'models/shop.dart';
import 'pages/cart_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(),
    child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
          '/cartpage' :(context) => const CartPage(),
        },
      ),
    );
  }
}
