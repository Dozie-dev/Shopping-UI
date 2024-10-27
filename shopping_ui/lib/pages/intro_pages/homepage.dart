import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.menu_rounded)))
            ],
          ),
        ));
  }
}
