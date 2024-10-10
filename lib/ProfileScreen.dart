import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher
// ignore: file_names

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        title: const Text('About Us'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            // About Us description
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'RKU Guide is developed by Computer-CE Engineering Students studying at School of Engineering, RK University Rajkot as a part of Project-based learning towards completion of semester. The application is developed with a view to help future learners connect with RKU, plan their study, and for the betterment of the student community by offering handy access to frequently used phrases, helplines, and tourist places.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Student profiles
            ProfileCard(
              name: 'Vivek Kumar',
              degree: 'Degree : BTech.-C.E.',
              imageUrl: 'assets/vivek.jpg', // replace with actual image URL
              linkedinUrl:
                  'https://www.linkedin.com/in/vivek-kumar-sah-921460257/',
            ),
            ProfileCard(
              name: 'Shailendra yadav',
              degree: 'Degree : BTech.-C.E.',
              imageUrl:
                  'assets/shailendra.png', // replace with actual image URL
              linkedinUrl:
                  'https://www.linkedin.com/in/shailendra-yadav-31072527b/',
            ),
            ProfileCard(
              name: 'Rohit Yadav',
              degree: 'Degree : BTech.-C.E.',
              imageUrl: 'assets/rohit.jpg', // replace with actual image URL
              linkedinUrl: 'https://www.linkedin.com/in/rohit-yadav-028407251/',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String degree;
  final String imageUrl;
  final String linkedinUrl;

  ProfileCard({
    required this.name,
    required this.degree,
    required this.imageUrl,
    required this.linkedinUrl,
  });
  // Helper method to launch the LinkedIn URL
  Future<void> _launchLinkedIn(String url) async {
    final Uri linkedinUri = Uri.parse(url);
    if (await canLaunchUrl(linkedinUri)) {
      await launchUrl(linkedinUri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            // Center the CircleAvatar vertically using a Column
            Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center it vertically
              children: [
                imageUrl.startsWith('http')
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                        radius: 70.0,
                      )
                    : CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                        radius: 70.0,
                      ),
              ],
            ),
            const SizedBox(width: 18.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    degree,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    // maxLines: 1, // Restrict the text to one line
                    // overflow: TextOverflow
                    //     .ellipsis, // Show ellipsis if text overflows
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () async {
                      // Add code to open the LinkedIn profile
                      _launchLinkedIn(linkedinUrl); // Open LinkedIn profile
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/linkedin.png', // Place LinkedIn logo in your assets
                          height: 50.0,
                          width: 50,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          'LinkedIn',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
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
