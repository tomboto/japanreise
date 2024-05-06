import 'package:flutter/material.dart';
import 'package:japanreise/cart_page.dart';
import 'package:japanreise/models/cart_model.dart';
import 'package:japanreise/pages/event_pages/festival.dart';
import 'package:japanreise/pages/event_pages/mount_fuji.dart';
import 'package:japanreise/pages/event_pages/noodle_haromy.dart';
import 'package:japanreise/pages/start_page.dart';
import 'package:japanreise/pages/menu_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      routes: {
        "/startpage": (context) => const StartPage(),
        "/menupage": (context) => const MenuPage(),
        "/festivalpage": (context) => const FestivalPage(),
        "/noodleharomypage": (context) => const NoodleHaromyPage(),
        "/mountfujipage": (context) => const MountFujiPage(),
        "/cartpage": (context) => const CartPage(),
      },
    );
  }
}
