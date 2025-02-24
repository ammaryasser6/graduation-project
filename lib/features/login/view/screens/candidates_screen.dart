import 'package:final_project/features/login/view/screens/presidental_candidates.dart';
import 'package:final_project/features/login/view/screens/senete_candidates_screen.dart';
import 'package:flutter/material.dart';

class TypeElectionScreen extends StatelessWidget {
  const TypeElectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Chose the type of electoins:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.blue, Colors.blue]),
                ),
                child: Column(

                    
                  children: [
                    Text(
                      "presedintal elections",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assets/images/politic.png",
                      height: size.height * 0.30,
                      width: size.width * 0.75,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PresidentalCandidates(),
                            ));
                      },
                      child: Text(
                        "Starts now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SeneteCandidatesScreen(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.blue, Colors.blue]),
                  ),
                  child: Column(children: [
                    Text(
                      "Senate elections",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assets/images/receptionist.png",
                      height: size.height * 0.30,
                      width: size.width * 0.75,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SeneteCandidatesScreen()));
                      },
                      child: Text(
                        "Starts now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              const Color.fromARGB(255, 6, 89, 156))),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.blue, Colors.blue]),
                ),
                child: Column(
                  children: [
                    Text(
                      "People's Assembly",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset("assets/images/candidates.png"),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Starts now",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
