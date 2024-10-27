import 'package:flutter/material.dart';
import 'package:shopping_ui/pages/intro_pages/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Homepage()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Stack(
        children: [
          Center(child: Image.asset('images/shoplogo.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              '2024',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
