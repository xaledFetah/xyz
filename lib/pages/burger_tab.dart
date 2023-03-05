import 'package:flutter/material.dart';

import 'donut_tile.dart';

class BurgerTab extends StatelessWidget {
  List pizzaOnSale = [
    // [ donutFlavor , donutPrice , donutColor , donutImage ]
    ["Berry juice", "36", Colors.blue, "lib/icons/b1.png"],
    ["Strawberry juice", "25", Colors.red, "lib/icons/b2.png"],
    ["Orange Juice", "17", Colors.purple, "lib/icons/b3.png"],
    ["Fruts Juice", "9", Colors.brown, "lib/icons/b4.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: pizzaOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return DonutTile(
            donuFlavor: pizzaOnSale[index][0],
            donutPrice: pizzaOnSale[index][1],
            donutColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3],
          );
        });
  }
}
