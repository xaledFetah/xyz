import 'package:flutter/material.dart';

import 'donut_tile.dart';

class PizzaTab extends StatelessWidget {
  List pizzaOnSale = [
    // [ donutFlavor , donutPrice , donutColor , donutImage ]
    ["Pizza Hat", "36", Colors.blue, "lib/icons/p1.png"],
    ["Pizza Mozarila", "25", Colors.red, "lib/icons/p2.png"],
    ["Pizza", "17", Colors.purple, "lib/icons/p3.png"],
    ["Dominos Pizza", "9", Colors.brown, "lib/icons/p4.png"],
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
