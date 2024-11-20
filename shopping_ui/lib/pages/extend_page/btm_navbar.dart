import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/pages/intro_pages/cart.dart';
import 'package:shopping_ui/pages/intro_pages/favouritepage.dart';
import 'package:shopping_ui/pages/intro_pages/homepage.dart';
import 'package:shopping_ui/pages/intro_pages/menupage.dart';
import 'package:shopping_ui/pages/intro_pages/profile.dart';

class BtmNavbar extends StatefulWidget {
  const BtmNavbar({super.key});

  @override
  State<BtmNavbar> createState() => _BtmNavbarState();
}

class _BtmNavbarState extends State<BtmNavbar> {
  int index = 2;

  final pages = [
    Menupage(),
    FavouritePage(),
    Homepage(),
    CartsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      Image.asset(
        'icons/menu.png',
        height: index == 0 ? 40 : 30,
        width: index == 0 ? 40 : 30,
      ),
      Icon(
        Icons.favorite_outline_sharp,
        size: index == 1 ? 40 : 30,
      ),
      Icon(
        Icons.home_outlined,
        size: index == 2 ? 40 : 30,
      ),
      Icon(
        Icons.shopping_cart_outlined,
        size: index == 3 ? 40 : 30,
      ),
      Icon(
        Icons.person_3_outlined,
        size: index == 4 ? 40 : 30,
      ),
    ];
    return Scaffold(
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: CurvedNavigationBar(
          height: 70,
          index: index,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.amber,
          animationDuration: Duration(milliseconds: 300),
          animationCurve: Curves.easeInOutCirc,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ));
  }
}
