import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';

class JourneyScreen extends StatelessWidget {
  const JourneyScreen({super.key});

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
          icon: const Icon(Icons.arrow_back,
          color:Colors.white),
          onPressed: () {
            // Navigating to HomePage on back arrow press
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Homescreen()),
            );
          },
        ),
        title: const Text('How To Reach RKU'),
        titleTextStyle: const TextStyle(fontSize: 25),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '➤RK University Is Located In The City Called Rajkot In Gujarat State. Rajkot Is Having A Domestic Airport With Flights From Delhi, Mumbai, And Ahmedabad.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '➤Ahmedabad Airport Is One Of The Biggest Airports In The Gujarat State Which Is 228 Km Far Away From Rajkot Which Takes Approximately 5 Hours By Road.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '➤Kindly Find Convenient Airports Below If You Are Coming From Foreign Countries.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  _buildTableRow('Location (city)', 'Airport name',
                      'Suitable if you are coming from',
                      isHeader: true),
                  _buildTableRow('New Delhi',
                      'Indira Gandhi International Airport', 'Any country'),
                  _buildTableRow(
                      'Mumbai',
                      'Chhatrapati Shivaji Maharaj International Airport',
                      'Any country'),
                  _buildTableRow(
                      'Bengaluru',
                      'Kempegowda International Airport',
                      'Sri Lanka, Well connected with all domestic airports'),
                  _buildTableRow(
                      'Ahmedabad',
                      'Sardar Vallabhbhai Patel International Airport',
                      'Africa, Well connected with all domestic airports'),
                  _buildTableRow('Rajkot', 'Rajkot Airport',
                      'Having connectivity from Delhi and Mumbai'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String col1, String col2, String col3,
      {bool isHeader = false}) {
    return TableRow(
      decoration: isHeader
          ? const BoxDecoration(color: Color.fromARGB(255, 84, 179, 188))
          : const BoxDecoration(),
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(col1,
              style: TextStyle(
                  fontWeight: isHeader ? FontWeight.bold : FontWeight.bold,
                  fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(col2,
              style: TextStyle(
                  fontWeight: isHeader ? FontWeight.bold : FontWeight.bold,
                  fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(col3,
              style: TextStyle(
                  fontWeight: isHeader ? FontWeight.bold : FontWeight.bold,
                  fontSize: 20)),
        ),
      ],
    );
  }
}
