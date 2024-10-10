import 'package:flutter/material.dart';
import 'package:rkuguideapp/SignInPage.dart';
//import 'package:rkuguideapp/ProfileScreen.dart';
//import 'package:rkuguideapp/DisclaimerScreen.dart';
//import 'package:rkuguideapp/ForgetScreen.dart';
//import 'package:rkuguideapp/MesssScreen.dart';
//import 'package:rkuguideapp/SignUpPage.dart';
//import 'package:rkuguideapp/SocialScreen.dart';
//import 'package:rkuguideapp/TalkScreen.dart';
//import 'package:rkuguideapp/JourneyScreen.dart';
//import 'package:rkuguideapp/CityScreen.dart';
//import 'package:rkuguideapp/HostelScreen.dart';
//import 'package:rkuguideapp/CoursePostgraduation.dart';
//import 'package:rkuguideapp/coursegraduationScreen.dart';
//import 'package:rkuguideapp/course12thAABScreen.dart';
//import 'package:rkuguideapp/CourseBscreen.dart';
//import 'package:rkuguideapp/CourseAscreen.dart';
//import 'package:rkuguideapp/Course12screen.dart';
//import 'package:rkuguideapp/Course10Screen.dart';
//import 'package:rkuguideapp/Coursescreen.dart';
//import 'package:rkuguideapp/Homescreen.dart';
//import 'package:rkuguideapp/SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SignInPage(),
      )),
    );
  }
}
