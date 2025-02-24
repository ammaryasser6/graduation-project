import 'package:flutter/material.dart';

class OnbordingItem extends StatelessWidget {
  const OnbordingItem({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              image,
              width: 200,
              height: 400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class OnBordinhModel {
  final String image;
  final String text;
  OnBordinhModel({required this.image, required this.text});

  static List<OnBordinhModel> ListOfOnBordingData = [
    OnBordinhModel(
      image: "assets/images/onbording1.png",
      text:
          "Voting is your basic right as a citizen of this country. It is a way to express your opinion and contribute to decisions that affect your life and the life of your community.",
    ),
    OnBordinhModel(
        image: "assets/images/onbording2.png",
        text: "Track your voter card and election unit easily"),

         OnBordinhModel(
        image: "assets/images/onbording3.png",
        text: "Make sure you register yourself as a voter. Check for specific registration times available in your area."),
         OnBordinhModel(
        image: "assets/images/onbording4.png",
        text: "Report electoral violence, as quickly as possible.  "),
OnBordinhModel(
        image: "assets/images/onbording5.png",
        text: " QR Code system has become popular,You can use it to register for elections "),
          


  ];
}
