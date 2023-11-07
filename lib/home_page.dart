//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-
//               made by m2y_code
//-----------------------------------------------------
// tiktok :    https://www.tiktok.com/@m2y_code
// instagram : https://www.instagram.com/m2y_code
// github :    https://github.com/m2y-code
// youtube:    https://www.youtube.com/@M2Y_Code
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'login');
          },
          child: Text("Log out")),
    );
  }
}
