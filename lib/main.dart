import 'package:dna_course_review_project/pages/registerPage.dart';
import 'package:dna_course_review_project/pages/splashScreen.dart';
import 'package:flutter/material.dart';

import 'pages/attendence.dart';
import 'pages/createAcc.dart';
import 'pages/homePage.dart';
import 'pages/loadingPage.dart';
import 'pages/loginPage.dart';
import 'pages/notificationPage.dart';
import 'pages/qrPage.dart';
import 'pages/record.dart';

void main() {
  runApp(const MaterialApp(
    home: splashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
