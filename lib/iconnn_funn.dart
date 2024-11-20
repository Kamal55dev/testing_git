import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
        centerTitle: true,
        // Optional: Centers the app bar title
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0), // Padding inside the container
        child: const Center(
          child: Column(),
        ),
      ),
    );
  }
}
