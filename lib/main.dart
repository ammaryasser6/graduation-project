import 'package:final_project/features/layout/view/screens/layout_screen.dart';
import 'package:final_project/features/login/view/screens/candidates_screen.dart';
import 'package:final_project/features/login/view/screens/home_screen.dart';
import 'package:final_project/features/login/view/screens/login_screen.dart';
import 'package:final_project/features/login/view/screens/vote_details_screen.dart';
import 'package:final_project/features/on_boading/on_bording_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: 
VoteDetailsScreen()        
        

        );
  }
}
