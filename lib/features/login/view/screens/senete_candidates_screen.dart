import 'package:flutter/material.dart';
import 'package:final_project/features/login/view/widgets/election_candidates.dart';

class SeneteCandidatesScreen extends StatelessWidget {
  const SeneteCandidatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Senate Elections",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              const SizedBox(height: 100), // مساحة تحت الـ AppBar
              _buildSearchBar(),
              const SizedBox(height: 25),
              _buildCandidatesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search candidates...",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: const Text("Filter", style: TextStyle(color: Colors.white)),
            ),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  Widget _buildCandidatesSection() {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _buildCandidateRow(),
          const SizedBox(height: 20),
          _buildCandidateRow(),
        ],
      ),
    );
  }

  Widget _buildCandidateRow() {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _buildCandidateCard(),
          );
        },
      ),
    );
  }

  Widget _buildCandidateCard() {
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
            }
  }

