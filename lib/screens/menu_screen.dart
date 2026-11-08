import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Widget buildCard(
    BuildContext context,
    String title,
    String route,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: Colors.orange,
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          height: 120,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza Store Menu"),
      ),
      body: Column(
        children: [
          buildCard(context, "Vegetable Pizza", "/vegetable"),
          buildCard(context, "Cheese Pizza", "/cheese"),
          buildCard(context, "Box of Fries", "/fries"),
        ],
      ),
    );
  }
}
