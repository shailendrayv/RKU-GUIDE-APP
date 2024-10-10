import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // For "BOYS HOSTEL" and "GIRLS HOSTEL"
  }

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
              MaterialPageRoute(builder: (context) => const Homescreen()),
            );
          },
        ),
        title: const Text('Rajkot City'),
        titleTextStyle: const TextStyle(fontSize: 30),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // Tab Bar
          Material(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(text: 'Place To Visit'),
                Tab(text: 'Famous Food'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // "Place to Visit" Tab
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image and Title
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Analgadh Hill',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(height: 0),
                              Image.asset(
                                'assets/city.jpg', // Replace with your image path
                                //height: 200,
                                //height: screenHeight * 0.50,
                                height: 300,
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                        // Description
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '➤ This is an offbeat best location, a beautiful and peaceful attraction and one of the top places near Rajkot.'
                            '\n➤ You can also explore top adventure activities including hiking, trekking, and photography.'
                            '\n➤ Location: Analgadh, Gujarat'
                            '\n➤ Entry Fee: Free'
                            '\n➤ Ideal for: Family and Kids'
                            '\n➤ Opening Hours: Anytime',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        // Next Place to Visit
                        const Divider(),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Ishwariya Park',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'assets/secondcity.jpg', // Replace with your image path
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                        // You can add more places similarly here
                      ],
                    ),
                  ),
                ),

                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image and Title
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 10),
                              Image.asset(
                                'assets/food1.jpg', // Replace with your image path
                                //height: 200,
                                height: screenHeight * 0.45,
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                        // Description
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            '👉Dal Pakwan Is One Of The Most Famous Sindhi Breakfast Recipe.\n'
                            'Dal Pakwan Is Basically Chana Dal Served With Pakwan (Crisp Fried Indian Bread).\n\n'
                            'Ghughra Is A Sweet Dish From Gujarat Which Is Loved By All The Gujarati’s. People Make This Dish '
                            'During Festivals And Other Occasions. It Has Some Sweet Stuffing Coated With The Dough. It Is Cut '
                            'In The Shape Of Half Moon And Is Baked. It Is Delicious And Healthy Too.',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
