import 'package:final_project/core/constants.dart';
import 'package:final_project/features/login/view/widgets/presidnted_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 12,
                            offset: Offset(3, 3))
                      ]),
                  child: Column(
                    children: [
                      const Text(
                        "Vote for the team . Participate in the elections! ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                                "Rerister now to be part of shaping. your country's future",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          Image.asset(
                            "assets/images/pngwing.png",
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        height: 60,
                        child: ListView.builder(
                          itemCount: Constants.voteimages.length,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          itemBuilder: (context, index) {
                            return Image.asset(Constants.voteimages[index]);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("start registering now")),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue[700],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Why participation in electians is important?",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Image.asset(
                            "assets/images/elections-concept.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Elections are not just a right but a responsibility. Every vote contributes to shaping the future of the nation. Your voice matters - register and participate today",
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                        Color(0XFFFFFFFF),
                        Color.fromRGBO(15, 23, 42, 0.45),
                      ])),
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.edit),
                            Card(
                              color: const Color(0XFF007AFF).withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Text(
                              "Start your registration online",
                              style: TextStyle(
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 150,
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        color: Color(0XFF999999),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Election stages",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.edit),
                            Card(
                              color: const Color(0XFF6C63FF).withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Text(
                              "Participate on voting day",
                              style: TextStyle(
                                fontSize: 12,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: 1,
                          height: 150,
                          margin: EdgeInsets.symmetric(horizontal: 1),
                          color: Color(0XFF999999)),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.edit),
                            Card(
                              color: const Color(0XFFFFFFFF).withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Text(
                              "Verify the final result",
                              style: TextStyle(
                                fontSize: 12,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                        Colors.white,
                        Color.fromARGB(13, 110, 253, 1)
                      ])),
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Expanded(
                      child: Column(
                    children: [
                      Text(
                        "Get Started Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Register Now",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(200, 40),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              backgroundColor: Color(0XFF6C63FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Learn More About Candidates",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Presidential candidates",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return PresidntedItem(
                        images: Constants.presidential_candidates[index],
                        name: Constants.Names[index],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: Constants.presidential_candidates.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("How to Vote Step by Step"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Register your account. Verify your identity.\n Head to the polling station on election day.\n Cast your vote in the ballot box.",
                              style: TextStyle(fontSize: 10),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pic1.png",
                                      width: 70,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "register",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.white,
                                        ),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pic2.png",
                                      width: 70,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Verify",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.yellow,
                                        ),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pic3.png",
                                      width: 70,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Go to Polling Station",
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.redAccent,
                                        ),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pic4.png",
                                      width: 70,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Vote",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.deepPurpleAccent,
                                        ),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
