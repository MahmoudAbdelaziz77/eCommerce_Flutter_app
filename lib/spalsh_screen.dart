import 'package:ecommerce/favorites_screen.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/login_screen.dart';
import 'package:ecommerce/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //   Duration(seconds: 3),
    //   () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => LoginScreen()),
    //   ),
    // );

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushNamed(context, NavigationScreen.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/image2.jpg'),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart, size: 200, color: Colors.amber[400]),
            Text(
              "DEPI Shop",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
