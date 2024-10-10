import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';

class MesssScreen extends StatelessWidget {
  const MesssScreen({super.key});

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
        title: const Text('Mess'),
        titleTextStyle: const TextStyle(fontSize: 34),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(20), // Set the radius as needed
                child: Image.asset(
                  'assets/mess.jpg', // Replace with your image link
                  fit: BoxFit.cover,
                  //height: 300,
                  height: screenHeight * 0.40,
                  width: double.infinity,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Mess Time Table',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      tableCell('Day', true),
                      tableCell('Breakfast', true),
                      tableCell('Lunch', true),
                      tableCell('Snacks', true),
                      tableCell('Dinner', true),
                    ],
                  ),
                  tableRow('Monday', '7:00 AM - 8:00 AM', '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM', '7:00 PM - 9:00 PM'),
                  tableRow('Tuesday', '7:00 AM - 8:00 AM', '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM', '7:00 PM - 9:00 PM'),
                  tableRow(
                      'Wednesday',
                      '7:00 AM - 8:00 AM',
                      '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM',
                      '7:00 PM - 9:00 PM'),
                  tableRow(
                      'Thursday',
                      '7:00 AM - 8:00 AM',
                      '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM',
                      '7:00 PM - 9:00 PM'),
                  tableRow('Friday', '7:00 AM - 8:00 AM', '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM', '7:00 PM - 9:00 PM'),
                  tableRow(
                      'Saturday',
                      '7:00 AM - 8:00 AM',
                      '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM',
                      '7:00 PM - 9:00 PM'),
                  tableRow('Sunday', '7:00 AM - 8:00 AM', '11:50 AM - 1:00 PM',
                      '4:00 PM - 5:00 PM', '7:00 PM - 9:00 PM'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Mess Rules And Regulations:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '1. Cleanliness: Please Ensure You Dispose Of Your Plates And Cutlery In The Designated Areas And Keep The Tables Clean.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      '2. Food Wastage: Wastage Of Food Is Strictly Prohibited. Take Only What You Can Consume.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      '3. Complaints: Any Complaints Regarding Food Quality Or Service Should Be Directed To The Mess Manager.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow tableRow(String day, String breakfast, String lunch, String snacks,
      String dinner) {
    return TableRow(
      children: [
        tableCell(day),
        tableCell(breakfast),
        tableCell(lunch),
        tableCell(snacks),
        tableCell(dinner),
      ],
    );
  }

  Widget tableCell(String text, [bool isHeader = false]) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
