import 'package:final_project/core/constants.dart';
import 'package:final_project/features/login/view/screens/vote_details_screen.dart';
import 'package:final_project/features/login/view/widgets/presidnted_item.dart';
import 'package:final_project/features/auth/register/view/register_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Color(0xFF1565C0), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              _buildInfoCard(),
              const SizedBox(height: 20),
              _buildParticipationCard(),
              const SizedBox(height: 20),
              _buildElectionProcessSection(),
              const SizedBox(height: 20),
              _buildGetStartedSection(context),
              const SizedBox(height: 20),
              _buildCandidatesSection(),
              const SizedBox(height: 20),
              _buildHowToVoteSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 12, offset: Offset(3, 3)),
        ],
      ),
      child: Column(
        children: [
          const Text(
            "Vote for the team. Participate in the elections!",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Register now to be part of shaping your country's future.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Image.asset("assets/images/pngwing.png", height: 150, width: 150),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 60,
            child: ListView.builder(
              itemCount: Constants.voteimages.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(Constants.voteimages[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParticipationCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Why is participation in elections important?",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset("assets/images/elections-concept.png",
                  height: 120, width: 120),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Elections are not just a right but a responsibility. Your vote shapes the nation's future!",
            style: TextStyle(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildElectionProcessSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildProcessStep(Icons.edit, "Start Registration", Colors.blueAccent),
        _buildProcessStep(Icons.how_to_vote, "Voting Day", Colors.greenAccent),
        _buildProcessStep(Icons.check, "Verify Results", Colors.orangeAccent),
      ],
    );
  }

  Widget _buildProcessStep(IconData icon, String text, Color color) {
    return Column(
      children: [
        Icon(icon, size: 40, color: color),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildGetStartedSection(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Get Started Now",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
                (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text("Register Now",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildCandidatesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Presidential Candidates",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Constants.presidential_candidates.length,
            itemBuilder: (context, index) {
              return PresidntedItem(
                images: Constants.presidential_candidates[index],
                name: Constants.Names[index],
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VoteDetailsScreen(),
                      ));
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildHowToVoteSection() {
    return Column(
      children: [
        const Text("How to Vote",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Text("Register > Verify > Vote!"),
      ],
    );
  }
}