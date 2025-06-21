import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VoteDetailsScreen extends StatefulWidget {
  VoteDetailsScreen({super.key});

  @override
  State<VoteDetailsScreen> createState() => _VoteDetailsScreenState();
}

class _VoteDetailsScreenState extends State<VoteDetailsScreen> {
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Candidate Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1565C0), Color(0xFF42A5F5), Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white.withOpacity(0.8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/cand.png",
                            fit: BoxFit.cover,
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Mohamed Ahmed El Sayed",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Symbol: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue[100],
                            child: Icon(Icons.book,
                                color: Colors.blue[900], size: 20),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "I am Mohamed Ahmed, a passionate advocate for progress and equality. I believe every vote matters and strive to create a brighter future for all through social justice, better education, and sustainable economic growth. Together, with your support, we can turn this vision into reality.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          image == null
                              ? const SizedBox()
                              : SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.file(image!),
                                ),
                          ElevatedButton(
                            onPressed: () {
                              tackImageFromCamera();
                            },
                            child: const Text(
                              "Vote Now",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              backgroundColor: Colors.blue[800],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Card(
                color: Colors.white.withOpacity(0.8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "My name is Mohamed Ahmed, a candidate with a proven track record of excellence in leadership, problem-solving, and community service. With an extensive background in education, public service, and economic development, I bring a wealth of experience and a clear vision for the future.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Bachelor’s degree in political science, Cairo University.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Master’s degree in Public Administration, Ain Shams University.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Certificates in leadership development and project management, which enhance my ability to effectively lead and implement impactful initiatives.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Age: 45 Years Old",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Date of Birth: January 10, 1978",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Nationality: Egypt",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Governorate: Cairo",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Candidate Number: 22224",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  File? image;
  void tackImageFromCamera() async {
    XFile? imageXFile = await imagePicker.pickImage(source: ImageSource.camera);

    if (imageXFile != null) {
      setState(() {
        image = File(imageXFile.path);
      });
    }
  }
}
