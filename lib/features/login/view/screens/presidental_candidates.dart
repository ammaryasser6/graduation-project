import 'package:final_project/core/constants.dart';
import 'package:final_project/features/login/view/widgets/senate_item.dart';
import 'package:flutter/material.dart';

class PresidentalCandidates extends StatelessWidget {
  const PresidentalCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.blue, Colors.white]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("presidental elections"),
        ),

  body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
                 SizedBox(
                height: 230,
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SenateItem(
                          image: "assets/images/Ahmed.png",
                          text: "Ahmed",
                        ),
                        SizedBox(width: 10),
                        SenateItem(
                          image: "assets/images/Ahmed.png",
                          text: "Ahmed",
                        ),
                        SizedBox(width: 10),
                        SenateItem(
                          image: "assets/images/Ahmed.png",
                          text: "Ahmed",
                        ),
                        SizedBox(width: 10),
                        SenateItem(
                          image: "assets/images/Ahmed.png",
                          text: "Ahmed",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )





          

  ),


          
      ),
          
    );
  }
}
