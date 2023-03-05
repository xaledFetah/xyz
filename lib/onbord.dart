import 'package:card_app/darweer.dart';
import 'package:card_app/fav.dart';
import 'package:card_app/onnum.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'koko.dart';

class Onborad extends StatefulWidget {
  const Onborad({super.key});

  @override
  State<Onborad> createState() => _OnboradState();
}

class _OnboradState extends State<Onborad> {
  @override
  int _page = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 35,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        }),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 35,
                ),
                onPressed: () {},
              )),
        ],
      ),
      drawer: draweer(),
      // start ,
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.pink.shade100,
          animationDuration: Duration(milliseconds: 250),
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ]),

      // end
      body: pagez(_page),
    );
  }

  Widget? pagez(int index) {
    Widget? widget;

    switch (index) {
      case 0:
        widget = Fav();
        break;
      case 1:
        widget = Onnum();
        break;
      case 2:
        widget = Koko();
    }
    return widget;
  }
}
