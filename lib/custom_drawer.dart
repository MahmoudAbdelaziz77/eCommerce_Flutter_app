import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/screens/favorites_screen.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Hossam Hassan"),
            accountEmail: Text("hos2025@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://play-lh.googleusercontent.com/3ZKfMRp_QrdN-LzsZTbXdXBH-LS1iykSg9ikNq_8T2ppc92ltNbFxS-tORxw2-6kGA',
              ),
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Cart"),
            onTap: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () {
              Navigator.pushNamed(context, FavoritesScreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.id);
            },
          ),

          DottedLine(
            dashGapLength: 4,
            dashLength: 6,
            lineThickness: 1,
            dashColor: Color.fromARGB(255, 209, 5, 5),
          ),
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
