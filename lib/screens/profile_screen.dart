import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = '/proScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Profile Screen", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
