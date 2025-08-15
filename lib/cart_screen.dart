import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String id = "/CartScreen";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Cart Screen",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
