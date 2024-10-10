import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';

class TalkScreen extends StatelessWidget {
  const TalkScreen({super.key});
  final bool showNational = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
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
              MaterialPageRoute(builder: (context) => const Homescreen()),
            );
          },
        ),
        title: const Text('Talk To Us'),
        titleTextStyle: const TextStyle(fontSize: 34),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.grey[300], // text color
                ),
                onPressed: () {
                  // Handle National Button Pressed
                },
                child: const Text(
                  'NATIONAL',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.grey[300], // text color
                ),
                onPressed: () {
                  // Handle International Button Pressed
                },
                child: const Text(
                  'INTERNATIONAL',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
