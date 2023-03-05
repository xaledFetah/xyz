import 'package:flutter/material.dart';

import 'donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    // [ donutFlavor , donutPrice , donutColor , donutImage ]
    ["Ice Creame", "36", Colors.blue, "lib/images/1.png"],
    ["Ice Creame", "25", Colors.red, "lib/images/2.png"],
    ["Ice Creame", "17", Colors.purple, "lib/images/3.png"],
    ["Ice Creame", "9", Colors.brown, "lib/images/4.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: donutOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return DonutTile(
            donuFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
