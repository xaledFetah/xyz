import 'package:card_app/fav.dart';
import 'package:card_app/koko.dart';
import 'package:card_app/onnum.dart';
import 'package:flutter/material.dart';

import 'onbord.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "Home": (context) => Onnum(),
        "Settings": (context) => Koko(),
        "Favorite": (context) => Fav(),
        // "Call": (context) => Call(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      home: Onborad(),
    );
  }
}
