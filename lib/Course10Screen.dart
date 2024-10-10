import 'package:flutter/material.dart';
import 'package:rkuguideapp/Coursescreen.dart';

class Course10screen extends StatelessWidget {
  const Course10screen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigating to HomePage on back arrow press
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Coursescreen()),
            );
          },
        ),
        title: const Text('After 10 th standard'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image or widget at the top (the photo above the courses)
            Container(
              margin: const EdgeInsets.all(9),
              height: screenHeight * 0.45,
              //height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/10thstudent.jpg'), // Replace with your image asset
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Courses Container
            Container(
              width: screenWidth * 1,
              margin: const EdgeInsets.all(9.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text(
                      'COURSES',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Diploma Engineering',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // List of courses
                  const Text(
                    '1. Mechanical Engineering\n'
                    '2. Electrical Engineering\n'
                    '3. Computer Engineering\n'
                    '4. Civil Engineering',
                    style: TextStyle(fontSize: 27),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 24),
                  // Apply Now Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle apply now click
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Background color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                    ),
                    child: const Text(
                      'APPLY NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
