import 'package:flutter/material.dart';
import 'package:rkuguideapp/Coursescreen.dart';
//import 'package:rkuguideapp/Coursescreen.dart';

class Course12screen extends StatelessWidget {
  const Course12screen({super.key});

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
        title: const Text('After 12th standard'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          // Image and Title Section
          Column(
            children: [
              Image.asset(
                'assets/12th student.jpg', // Add your image path here
                height: screenHeight * 0.40,

                //height: 200,
                //width: 500,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),
            ],
          ),

          // Courses Section
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 90.0),
                      child: Text(
                        'COURSES',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bachelor Of Computer Application\n'
                  'Bachelor Of Business Administration\n',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bachelor Of Vocation',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                courseListItem("1. Information Technology"),
                courseListItem("2. Banking And Finance"),
                courseListItem("3. Management And Entrepreneurship"),
                courseListItem("4. Healthcare"),
                courseListItem("5. Media"),
                courseListItem("6. Journalism And Mass Communication"),
                courseListItem("7. Design"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Apply Button
          ElevatedButton(
            onPressed: () {
              // Add your button logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text(
              'APPLY NOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget courseListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          //color: Colors.black,
        ),
      ),
    );
  }
}
