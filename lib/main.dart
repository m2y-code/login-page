//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-
//               made by m2y_code
//-----------------------------------------------------
// tiktok :    https://www.tiktok.com/@m2y_code
// instagram : https://www.instagram.com/m2y_code
// github :    https://github.com/m2y-code
// youtube:    https://www.youtube.com/@M2Y_Code
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-

// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/custom_text_field.dart';
import 'package:login_page/home_page.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "signup": (context) => SignUpPage(),
        "login": (context) => LoginPage(),
        "homepage": (context) => HomePage(),
      },
      home: SignUpPage(),
    );
  }
}
