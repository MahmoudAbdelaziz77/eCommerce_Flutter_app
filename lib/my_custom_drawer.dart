import 'package:ecommerce/cart_screen.dart';
import 'package:ecommerce/favorites_screen.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:flutter/material.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Hossam Hassan"),
            accountEmail: Text("Email@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png',
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.popAndPushNamed(context, HomeScreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Cart"),
            onTap: () {
              Navigator.popAndPushNamed(context, CartScreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            onTap: () {
              Navigator.popAndPushNamed(context, FavoritesScreen.id);
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
