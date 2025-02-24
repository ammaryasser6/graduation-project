import 'package:flutter/material.dart';

class VoteDetailsScreen extends StatelessWidget {
  VoteDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohammed Ahmed Ibrahim",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "symbl : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.black12,
                            child: Icon(Icons.book),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "I am Mohamed Ahmed, a passionate advocate for progress and equality. I believe every vote matters and strive to create a brighter future for all through social justice, better education, and sustainable economic growth. Together, with your support, we can turn this vision into reality.",
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("vote now")),
                    ],
                  ),
                  Image.asset("assets/images/cand.png")
                ],
              )
            ],
          ),
        ));
  }
}
