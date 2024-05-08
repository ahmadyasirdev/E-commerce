


import 'package:ecommres/model/shop.dart';
import 'package:ecommres/page/cart_page.dart';
import 'package:ecommres/page/intro_page.dart';
import 'package:ecommres/page/shop_page.dart';
import 'package:ecommres/them/ligth_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        'IntroPage':(context)=> const IntroPage(),
        'ShopPage': (context)=> const ShopPage(),
        'cart_page':(context)=> const  CartPage()
      },
    );
  }
}
