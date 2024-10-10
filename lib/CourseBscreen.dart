import 'package:flutter/material.dart';
import 'package:rkuguideapp/Coursescreen.dart';

class CourseBscreen extends StatelessWidget {
  const CourseBscreen({super.key});

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
        title: const Text('After 12th Sci.B/B/AB/Group'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image section
            Container(
              //height: 200,
              margin: const EdgeInsets.all(6),
              child: Image.asset(
                'assets/12thb.ab student.jpg', // Use the appropriate image asset path
                fit: BoxFit.contain,
                height: screenHeight * 0.40,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 0),

            // Courses section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 110.0),
                      child: Text(
                        "COURSES",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "1. Bachelor Of Physiotherapy",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    ListTile(
                      title: Text("2. Bachelor Of Science - Medical",
                          style: TextStyle(fontSize: 24)),
                    ),
                    ListTile(
                      title: Text(
                          "3. Bachelor Of Ayurvedic Medicine And Surgery",
                          style: TextStyle(fontSize: 24)),
                    ),
                    ListTile(
                      title: Text("4. Bachelor Of Science Agriculture",
                          style: TextStyle(fontSize: 24)),
                    ),
                  ],
                ),
              ),
            ),

            // Apply Now button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 19),
                  backgroundColor: Colors.red, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  // Define apply now action here
                },
                child: const Text(
                  "APPLY NOW",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
