import 'package:flutter/material.dart';

import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';
import 'page_profile.dart';

class Demo11aBottomnav extends StatefulWidget {
  const Demo11aBottomnav({super.key});

  @override
  State<Demo11aBottomnav> createState() => _Demo11aBottomnavState();
}

class _Demo11aBottomnavState extends State<Demo11aBottomnav> {
  int currentBottomTab = 0;

  final List<Widget> bottomNavScreens = [
    PageHome(),
    PageSearch(),
    PageSettings(),
    PageProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Demo")),
      body: IndexedStack(index: currentBottomTab, children: bottomNavScreens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentBottomTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (value) {
          setState(() {
            currentBottomTab = value;
          });
        },
      ),
    );
  }
}
