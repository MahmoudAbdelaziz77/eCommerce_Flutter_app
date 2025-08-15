import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce/cart_screen.dart';
import 'package:ecommerce/favorites_screen.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  static String id = '/NavScreen';
  NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    ProfileScreen(),
    CartScreen(),
    FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: pages),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code, size: 25),
        backgroundColor: Color(0xffdb3022),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.person,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
        ],
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xffdb3022),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        iconSize: 25,
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
