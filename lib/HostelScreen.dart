import 'package:flutter/material.dart';
import 'package:rkuguideapp/HomeScreen.dart';

class HostelScreen extends StatefulWidget {
  const HostelScreen({super.key});

  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen>
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
          title: const Text('Hostel'),
          titleTextStyle: const TextStyle(fontSize: 30),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(children: [
          // TabBar below AppBar
          Material(
            color: Colors.white, // Background color of the TabBar
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: "BOYS HOSTEL",
                ),
                Tab(text: "GIRLS HOSTEL"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Boys Hostel tab
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Section
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              20), // Adjust for a more or less rounded shape
                          child: Image.asset(
                            'assets/boy.jpg', // Replace with your image path
                            fit: BoxFit.cover,
                            width:
                                400, // Set the width and height for the round image size
                            height: 300,
                          ),
                        ),
                      ),
                      // About Section
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "ABOUT BOYS HOSTEL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "The hostels are well maintained. The hostel building is having construction and maintenance in order to accommodate more people and provide new facilities.",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Rules Section
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "RULES AND REGULATION",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "➤ Students must abide by the hostel policy rules and code of conduct at the time of admission to the hostel.",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "➤ Transfer of room is to be done with official process and authorized by the warden based on availability.",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "➤ All the furniture will be provided by the hostel in-charge. The student will incur if any item is found damaged or missing from their room due to careless/negligent handling.",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "➤ Electric appliances shall not be permitted in the room, defiance of which shall enable the warden/campus administration to confiscate the gadget forthwith (e.g. iron induction stove).",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Girls Hostel tab (can have similar content or different)
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Section
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/girl.jpg', // Replace with your image path
                          fit: BoxFit.contain,
                          width: double.infinity,
                          height: screenHeight * 0.46,
                          //height: 200,
                        ),
                      ),

                      // About Section
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "ABOUT GIRLs HOSTEL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "The hostels are well maintained. The hostel building is having construction and maintenance in order to accommodate more people and provide new facilities.",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Rules Section
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "RULES AND REGULATION",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "➤ Students must abide by the hostel policy rules and code of conduct at the time of admission to the hostel.",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "➤ Transfer of room is to be done with official process and authorized by the warden based on availability.",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "➤ All the furniture will be provided by the hostel in-charge. The student will incur if any item is found damaged or missing from their room due to careless/negligent handling.",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "➤ Electric appliances shall not be permitted in the room, defiance of which shall enable the warden/campus administration to confiscate the gadget forthwith (e.g. iron induction stove).",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
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
          )
        ]));
  }
}
