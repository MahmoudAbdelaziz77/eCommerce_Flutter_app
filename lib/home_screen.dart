import 'package:ecommerce/my_custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      drawer: MyCustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              onDoubleTap: () {
                print("Double Tapped");
              },
              child: Container(
                color: Colors.amber,
                width: 100,
                height: 100,
                child: Center(child: Text("Hello World")),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onVerticalDragUpdate: (details) {
                print("Vertical Drag ${details.delta.dy}");
              },
              onHorizontalDragUpdate: (details) {
                print("Horizontal Drag ${details.delta.dx}");
              },

              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(child: Text("Drage Me")),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onScaleUpdate: (details) {
                print("Scale ${details.scale}");
              },
              child: Image.network(
                'https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 30),
            Draggable(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: Text("Drag Me"),
              ),
              feedback: Material(
                child: Container(
                  color: Colors.amber,
                  padding: EdgeInsets.all(16),
                  child: Text("Dragging"),
                ),
              ),
            ),
            SizedBox(height: 30),
            Transform.scale(
              scale: 1.5,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            SizedBox(height: 30),
            Transform.rotate(
              angle: 0.5,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
