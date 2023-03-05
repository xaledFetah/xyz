import 'package:flutter/material.dart';

class draweer extends StatelessWidget {
  const draweer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(25)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                  ),
                  color: Colors.pink[100],
                ),
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('lib/icons/gf.gif')),
                accountName: Text(
                  "Khaled Fetah",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                accountEmail: Text("tyyutshis@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Home');
                  },
                  title: Text(
                    "Home Page",
                    style: TextStyle(color: Colors.pink[200]),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Favorite');
                  },
                  title: Text(
                    "Favorites Page",
                    style: TextStyle(color: Colors.pink[200]),
                  ),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Settings');
                  },
                  title: Text(
                    "Settings Page",
                    style: TextStyle(color: Colors.pink[200]),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Communication page",
                    style: TextStyle(color: Colors.pink[200]),
                  ),
                  leading: Icon(
                    Icons.call,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
