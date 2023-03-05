import 'package:card_app/darweer.dart';
import 'package:card_app/fav.dart';
import 'package:card_app/pages/my_tab.dart';
import 'package:card_app/pages/pancake_tab.dart';
import 'package:card_app/pages/smoothie.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'koko.dart';
import 'pages/burger_tab.dart';
import 'pages/donut_tab.dart';
import 'pages/pizza_tab.dart';

class Onnum extends StatefulWidget {
  const Onnum({super.key});

  @override
  State<Onnum> createState() => _OnnumState();
}

class _OnnumState extends State<Onnum> {
  List<Widget> myTabsl = [
    // donuts tab
    MyTab1(
      iconPath: 'lib/icons/i1.png',
    ),
    // burger tab
    MyTab1(
      iconPath: 'lib/icons/bt.png',
    ),
    // smoothie tab
    MyTab1(
      iconPath: 'lib/icons/st.png',
    ),
    // pancake tab
    MyTab1(
      iconPath: 'lib/icons/ct.png',
    ),
    // pizza tab
    MyTab1(
      iconPath: 'lib/icons/pt.png',
    ),
  ];
  @override
  int _pages = 0;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabsl.length,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // tab bar
            TabBar(tabs: myTabsl),
            // tab bar view
            Expanded(
                child: TabBarView(children: [
              // donut page
              DonutTab(),
              // burger page
              BurgerTab(),

              // smothie page
              SmothieTab(),

              // pancake page
              PancakeTab(),

              // pizza page
              PizzaTab(),
            ])),
            // bnavbar(),
          ],
        ),
      ),
    );
  }
}
