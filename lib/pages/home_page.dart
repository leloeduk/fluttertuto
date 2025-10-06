import 'package:flutter/material.dart';
import 'package:fluttertuto/pages/drawer_page.dart';
import 'package:fluttertuto/pages/favorite_page.dart';
import 'package:fluttertuto/pages/settings_page.dart';

import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexPage = 0;
  List pages = [HomeScreen(), FavoritePage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Fluttertuto")),
      drawer: DrawerPage(),
      body: pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        currentIndex: indexPage,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "favorite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
