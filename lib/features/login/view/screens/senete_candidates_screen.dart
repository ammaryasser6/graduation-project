import 'package:final_project/core/constants.dart';
import 'package:final_project/features/login/view/widgets/senate_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeneteCandidatesScreen extends StatelessWidget {
  const SeneteCandidatesScreen({super.key});
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
          title: Text("senste elections"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "search candidates name",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.blue),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          onPressed: () {},
                          child: Text(
                            "filter",
                            style: TextStyle(color: Colors.white),
                          )),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
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
              SizedBox(
                height: 20,
              ),
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
          ),
        ),
      ),
    );
  }
}
