import 'package:card_app/darweer.dart';
import 'package:flutter/material.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorites Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
