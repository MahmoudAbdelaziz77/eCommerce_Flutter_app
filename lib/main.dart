import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/screens/favorites_screen.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/login_screen.dart';
import 'package:ecommerce/screens/navigation_screen.dart';
import 'package:ecommerce/screens/profile_screen.dart';
import 'package:ecommerce/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CartScreen.id: (context) => CartScreen(),
        NavigationScreen.id: (context) => NavigationScreen(),
        FavoritesScreen.id: (context) => FavoritesScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
    );
  }
}
