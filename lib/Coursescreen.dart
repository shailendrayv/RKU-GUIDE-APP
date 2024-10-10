import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';
import 'package:rkuguideapp/CourseBscreen.dart';
import 'package:rkuguideapp/CourseAscreen.dart';
import 'package:rkuguideapp/Course12screen.dart';
import 'package:rkuguideapp/Course10Screen.dart';
import 'package:rkuguideapp/course12thAABScreen.dart';
import 'package:rkuguideapp/CoursePostgraduation.dart';
import 'package:rkuguideapp/coursegraduationScreen.dart';

class Coursescreen extends StatelessWidget {
  // List of course categories
  final List<String> courses = [
    "AFTER 10th STANDARD",
    "AFTER 12th COM./SCI./ARTS",
    "AFTER 12th SCI.-A/AB GROUP",
    "AFTER 12th SCI.-B/AB/ GROUP",
    "AFTER 12th SCI.-A/B/AB GROUP",
    "AFTER GRADUATION",
    "AFTER POST",
  ];
  Coursescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(3),
                topRight: Radius.circular(3))),
        leading: IconButton(
          iconSize: 50,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Navigating to HomePage on back arrow press
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Homescreen()),
            );
          },
        ),
        title: const Text('Courses'),
        titleTextStyle: const TextStyle(fontSize: 30),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Handle card tap
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Course10screen(),
                  ),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Course12screen(),
                  ),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseAscreen(),
                  ),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseBscreen(),
                  ),
                );
              } else if (index == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Course12thAABscreen(),
                  ),
                );
              } else if (index == 5) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CoursegraduationScreen(),
                  ),
                );
              } else if (index == 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CoursePostgraduationScreen(),
                  ),
                );
              }
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Stack(
                children: [
                  // Background Image
                  // Positioned.fill(
                  //   child: Opacity(
                  //     opacity: 1, // Set opacity for the background image
                  //     child: Image.asset(
                  //       'assets/Book.jpg', // Replace with your actual background image
                  //       width: 140,
                  //       height: 80,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Expanded to ensure text takes up remaining space
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                courses[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        //Right side image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Book.jpg', // Replace with your actual image path
                            width: 140,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
