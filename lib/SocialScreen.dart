import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  Future<void> _launchURL(String url) async {
    // Ensure the URL starts with http:// or https://
    final formattedUrl = url.startsWith('http://') || url.startsWith('https://')
        ? url
        : 'https://$url';

    // ignore: deprecated_member_use
    if (await canLaunch(formattedUrl)) {
      // ignore: deprecated_member_use
      await launch(formattedUrl);
    } else {
      throw 'Could not launch $formattedUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Information',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context); // Close the current screen
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          ListTile(
            leading: const Icon(
              Icons.play_circle_fill,
              color: Colors.red,
              size: 40,
            ),
            title: const Text(
              'YouTube',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              _launchURL(
                  'https://youtube.com/@rkuniversityindia?si=xuQOBR1NChJh0yE1'); // Open YouTube link
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.camera_alt,
              color: Colors.purple,
              size: 40,
            ),
            title: const Text(
              'Instagram',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              _launchURL(
                  'https://www.instagram.com/rkuniversity?igsh=c3Y4M2J3cTN1Z2Vl'); // Open Instagram link
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.facebook,
              color: Colors.blue,
              size: 40,
            ),
            title: const Text(
              'Facebook',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              _launchURL(
                  'https://www.facebook.com/rkuindia?mibextid=ZbWKwL'); // Open Facebook link
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.link,
              color: Colors.blueAccent,
              size: 40,
            ),
            title: const Text(
              'LinkedIn',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              _launchURL(
                  'https://www.linkedin.com/school/rkuniversity/'); // Open LinkedIn link
            },
          ),
        ],
      ),
    );
  }
}
