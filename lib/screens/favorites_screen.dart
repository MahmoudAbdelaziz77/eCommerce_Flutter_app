import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static String id = '/favScreen';
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Favorites Screen", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
