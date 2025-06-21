import 'package:final_project/features/login/view/screens/help_screen.dart';
import 'package:final_project/features/login/view/screens/candidates_screen.dart';
import 'package:final_project/features/login/view/screens/home_screen.dart';
import 'package:final_project/features/auth/login/login_screen.dart';
import 'package:final_project/features/login/view/screens/vote_result_screen.dart';
import 'package:final_project/features/auth/register/view/register_screen.dart';
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
    HelpScreen(),
    VotingResultsScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black12,
          unselectedItemColor: Colors.blue,
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
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.how_to_vote),
              label: "Elections",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_outline), label: "Help"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Voting Result"),
            
          ]),
    );
  }
}
