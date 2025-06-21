import 'package:flutter/material.dart';
import 'package:final_project/features/login/view/widgets/election_candidates.dart';

class PresidentalCandidates extends StatelessWidget {
  const PresidentalCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), 
        child: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            "Presidental Election Candidates",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 8, 
          centerTitle: true,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1565C0), Color(0xFF42A5F5), Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16, 
              mainAxisSpacing: 16,  
              childAspectRatio: 0.8, 
            ),
            itemCount: 6, 
            itemBuilder: (context, index) {
              return ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );
              ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );

              ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );
              ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );
              ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );
              ElectionCandidates(
                image: "assets/images/Ahmed.png",
                text: "Ahmed",
              );
            },
          ),
        ),
      ),
    );
  }
}
