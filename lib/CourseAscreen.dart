import 'package:flutter/material.dart';
import 'package:rkuguideapp/Coursescreen.dart';

class CourseAscreen extends StatelessWidget {
  const CourseAscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    //double screenWidth = MediaQuery.of(context).size.width;
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
        title: const Text('After 12th Sci.A/B/AB/Group'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/Rku.jpg', // Replace with your image URL or asset
                fit: BoxFit.cover,
                height: screenHeight * 0.40,
                width: double.infinity,
                //height: 200,
              ),
            ),
            const SizedBox(height: 10),

            // Courses section
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90.0),
                    child: Text(
                      'COURSES',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bachelor Of Pharmacy',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Doctor Of Pharmacy (Pharm D)',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Bachelor Of Science',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '1. Chemistry',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Text(
                    '2. Microbiology',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),

                  // Apply Now button
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button background color
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 22,
                        ),
                        textStyle: const TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        // Handle apply now action
                      },
                      child: const Text(
                        'APPLY NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
