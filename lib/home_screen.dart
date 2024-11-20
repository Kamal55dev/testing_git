import 'package:flutter/material.dart';
import 'package:river/iconnn_funn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('products'),
          actions: [
            cardIcon(context),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10, // Spacing between columns
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: 10, // Total items
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey
                        .withOpacity(0.05), // Blue-gray with opacity
                    borderRadius:
                        BorderRadius.circular(8), // Optional: rounded corners
                    border: Border.all(
                      color: Colors.blueGrey, // Optional: border color
                      width: 1, // Optional: border width
                    ),
                  ),
                );
              }),
        ));
  }
}

Widget cardIcon(BuildContext context) {
  return Stack(
    alignment: Alignment.topRight, // Align badge at the top right corner
    children: [
      IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CardScreen()));
        },
        icon: const Icon(
          Icons.shopping_cart, // Main icon
          size: 40,
          color: Colors.blueGrey,
        ),
      ),
      Positioned(
        right: 10,
        top: 10,
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
            color: Colors.red, // Badge background color
            shape: BoxShape.circle,
          ),
        ),
      ),
    ],
  );
}
