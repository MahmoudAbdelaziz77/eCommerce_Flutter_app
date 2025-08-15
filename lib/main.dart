import 'package:ecommerce/cart_screen.dart';
import 'package:ecommerce/favorites_screen.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/navigation_screen.dart';
import 'package:ecommerce/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CartScreen.id: (context) => CartScreen(),
        FavoritesScreen.id: (context) => FavoritesScreen(),
        NavigationScreen.id: (context) => NavigationScreen(),
      },
      debugShowCheckedModeBanner: false,
      // home: NavigationScreen(),
    );
  }
}
