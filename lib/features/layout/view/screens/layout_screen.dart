import 'package:final_project/features/login/view/screens/candidates_screen.dart';
import 'package:final_project/features/login/view/screens/home_screen.dart';
import 'package:final_project/features/login/view/screens/login_screen.dart';
import 'package:final_project/features/register/view/register_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedindex = 0;
  List screens = [
    HomeScreen(),
    TypeElectionScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black12,
          unselectedItemColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "type election",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "About",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_outlined), label: "Help"),
          ]),
    );
  }
}
