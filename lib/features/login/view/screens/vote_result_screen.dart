import 'package:final_project/features/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

class VotingResultsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> candidates = [
    {
      "name": "Mohammed Ahmed Ibrahim",
      "votes": 22224,
      "percentage": 90,
      "image": "assets/images/Mohammed.png",
      "isTop": true,
    },
    {
      "name": "Ahmed Marwan Moussa",
      "votes": 22222,
      "percentage": 81,
      "image": "assets/images/Ahmed.png",
      "isTop": false,
    },
    {
      "name": "Omar Saad Al-Iraqi",
      "votes": 11111,
      "percentage": 77,
      "image": "assets/images/Saad.png",
      "isTop": false,
    },
    {
      "name": "Mahmoud Ahmed Amin",
      "votes": 77775,
      "percentage": 60,
      "image": "assets/images/Samir.png",
      "isTop": false,
    },
    {
      "name": "Samir Muhammad Al-Mujji",
      "votes": 66666,
      "percentage": 50,
      "image": "assets/images/Ahmed.png",
      "isTop": false,
    },
    {
      "name": "Amer Karim Mustafa",
      "votes": 99999,
      "percentage": 30,
      "image": "assets/images/Ibrahim.png",
      "isTop": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0072ff), Color(0xFF00c6ff)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              IconButton(onPressed: (
                  ){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen(),), (route) => false,);
              }, icon: Icon(Icons.logout)),
              const SizedBox(height: 40),
              const Text(
                "Voting Results",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(5, 100, 5, 100),
                  itemCount: candidates.length,
                  itemBuilder: (context, index) {
                    final candidate = candidates[index];
                    return _buildCandidateCard(candidate);
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCandidateCard(Map<String, dynamic> candidate) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (candidate["isTop"])
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "🏆 Most Voted",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(candidate["image"]),
          ),
          const SizedBox(height: 10),
          Text(
            candidate["name"],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            "${candidate["votes"]} Votes",
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                height: 8,
                width: (candidate["percentage"] / 100) * 170,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            "${candidate["percentage"]}%",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text("Back"),
          ),
          const SizedBox(height: 5),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share, size: 18, color: Colors.blueAccent),
            label: const Text(
              "Share the results",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
