import 'package:flutter/material.dart';
import 'package:rkuguideapp/CityScreen.dart';
import 'package:rkuguideapp/SignInPage.dart';
import 'package:rkuguideapp/TalkScreen.dart';
import 'package:rkuguideapp/MesssScreen.dart';
import 'package:rkuguideapp/Coursescreen.dart';
import 'package:rkuguideapp/HostelScreen.dart';
import 'package:rkuguideapp/SocialScreen.dart';
import 'package:rkuguideapp/ProfileScreen.dart';
import 'package:rkuguideapp/JourneyScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rkuguideapp/DisclaimerScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore_for_file: deprecated_member_use

// ignore_for_file: file_names

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0, // Remove shadow under the app bar
        toolbarHeight: 100,
        toolbarTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(3),
                topRight: Radius.circular(3))),
        leading: IconButton(
          iconSize: 70,
          icon: const Icon(Icons.home_outlined, color: Colors.white),
          onPressed: () {
            // Add functionality for the home button here
          },
        ),
        actions: [
          IconButton(
            iconSize: 44,
            icon: const FaIcon(FontAwesomeIcons.whatsapp,
                color: Color.fromARGB(255, 166, 240, 169)),
            onPressed: () async {
              // Notification action
              const phoneNumber =
                  '+91 97124 89122'; // Replace with your phone number
              const message =
                  'Hello, I have a query'; // Optional pre-filled message
              final whatsappUrl =
                  'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

              if (await canLaunch(whatsappUrl)) {
                await launch(whatsappUrl);
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('WhatsApp is not installed on this device')),
                );
              }
            },
          ),
          IconButton(
            iconSize: 50,
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              // Info action
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SocialScreen()),
              );
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (value == 'Team members') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              } else if (value == 'Disclaimer') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DisclaimerScreen()),
                );
              } else if (value == 'Logout') {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                  (route) => false,
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Team members',
                  child: Text(
                    'Team members',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Disclaimer',
                  child: Text(
                    'Disclaimer',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Logout',
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ];
            },
            iconSize: 50,
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/Rku.jpg', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),

            // Buttons Section
            buildMenuButton(context, Icons.description, "Course At A Glance"),
            buildMenuButton(context, Icons.apartment, "Hostel"),
            buildMenuButton(context, Icons.location_city, "City"),
            buildMenuButton(context, Icons.movie, "Journey To RKU"),
            buildMenuButton(context, Icons.restaurant, "Mess"),
            buildMenuButton(context, Icons.phone, "Talk To Us"),
          ],
        ),
      ),
    );
  }

// Function to create each menu button using ListTile
  Widget buildMenuButton(BuildContext context, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Icon(icon, size: 50, color: Colors.black),
          title: Text(
            label,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          tileColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTap: () {
            //Handle button press
            if (label == "Course At A Glance") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Coursescreen()),
              );
            } else if (label == "Hostel") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HostelScreen()),
              );
            } else if (label == "City") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CityScreen()),
              );
            } else if (label == "Journey To RKU") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const JourneyScreen()),
              );
            } else if (label == "Mess") {
              // print("Hello");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MesssScreen()),
              );
            } else if (label == "Talk To Us") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TalkScreen()),
              );
            }
            //Handle other buttons here if necessary
          },
        ),
      ),
    );
  }
}
