import 'package:flutter/material.dart';

class CartsPage extends StatefulWidget {
  const CartsPage({super.key});

  @override
  State<CartsPage> createState() => _CartsPageState();
}

class _CartsPageState extends State<CartsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(child: Text('Added To Cart')),
    );
  }
}
