import 'package:ecommerce/custom_drawer.dart';
import 'package:ecommerce/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen", style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.pushNamed(context, CartScreen.id);
              },
              child: Text("POP Navigate"),
            ),
          ],
        ),
      ),

      drawer: CustomDrawer(),
    );
  }
}
