import 'package:flutter/material.dart';

import 'donut_tile.dart';

class SmothieTab extends StatelessWidget {
  List pizzaOnSale = [
    // [ donutFlavor , donutPrice , donutColor , donutImage ]
    ["Berry juice", "36", Colors.blue, "lib/icons/s1.png"],
    ["Strawberry juice", "25", Colors.red, "lib/icons/s2.png"],
    ["Orange Juice", "17", Colors.purple, "lib/icons/s3.png"],
    ["Fruts Juice", "9", Colors.brown, "lib/icons/s4.png"],
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
