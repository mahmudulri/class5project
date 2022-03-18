import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'setting.dart';
import 'profile.dart';
import 'tabpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;

  final pages = [
    Myhomepage(),
    Tabpage(),
    Setting(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.home),
                label: "Homepage"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Tab Page"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "profile"),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text("AppBar"),
        // ),
        body: pages[_currentindex]);
  }
}
