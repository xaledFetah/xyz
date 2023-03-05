import 'dart:math';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donuFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;
  final double borderRadius = 12;

  const DonutTile(
      {super.key,
      required this.donuFlavor,
      required this.donutColor,
      required this.donutPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    child: Text(
                      '\$ ' + donutPrice,
                      style: TextStyle(
                          color: donutColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            // Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
              child: Image.asset(imageName),
            ),

            // Donut Flavor
            Text(
              donuFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            // Love Icon + Add Button
            SizedBox(
              height: 4,
            ),
            Text(
              'dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6,
            ),
            // Icons
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink[400],
                      size: 30,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.pink[400],
                      size: 30,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
