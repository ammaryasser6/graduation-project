import 'package:flutter/material.dart';
import 'package:final_project/features/login/view/screens/people_assembly.dart';
import 'package:final_project/features/login/view/screens/presidental_candidates.dart';
import 'package:final_project/features/login/view/screens/senete_candidates_screen.dart';

class TypeElectionScreen extends StatelessWidget {
  const TypeElectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(" Election Type",
      //       style: TextStyle(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      //   backgroundColor: Colors.blueAccent,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  " Election Type",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose the type of elections:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              _buildElectionCard(
                context,
                "Presidential Elections",
                "assets/images/politic.png",
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PresidentalCandidates())),
              ),
              const SizedBox(height: 15),
              _buildElectionCard(
                context,
                "Senate Elections",
                "assets/images/receptionist.png",
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeneteCandidatesScreen())),
              ),
              const SizedBox(height: 15),
              _buildElectionCard(
                context,
                "People's Assembly",
                "assets/images/candidates.png",
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PeopleAssembly())),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElectionCard(BuildContext context, String title,
      String imagePath, VoidCallback onTap) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            Image.asset(imagePath, height: 150, width: 150),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Start Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
