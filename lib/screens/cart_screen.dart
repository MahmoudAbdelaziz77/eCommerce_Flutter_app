import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String id = '/cartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Cart Screen", style: TextStyle(fontSize: 30))),
    );
  }
}
