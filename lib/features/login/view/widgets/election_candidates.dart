import 'package:final_project/features/login/view/screens/vote_details_screen.dart';
import 'package:flutter/material.dart';

class ElectionCandidates extends StatelessWidget {
  const ElectionCandidates(
      {super.key,
      required this.image,
      required this.text,
      this.onTap,
      this.color});
  final String image;
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color ?? Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 70,
            height: 100,
          ),
          Text(text),
          Icon(Icons.star),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VoteDetailsScreen()));
              },
              child: Text("view detales")),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
