import 'package:flutter/material.dart';
import 'package:fluttertuto/pages/favorite_page.dart';
import 'package:fluttertuto/pages/settings_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 50, backgroundColor: Colors.red),
                  SizedBox(height: 10),
                  Text("Lelo Eduk 2025"),
                ],
              ),
            ),
          ),

          Wrap(
            runSpacing: 6,
            spacing: 10,
            children: [
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                leading: Icon(Icons.settings),
                title: Text("settings"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FavoritePage()),
                  );
                },
                leading: Icon(Icons.favorite),
                title: Text("favorite"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
