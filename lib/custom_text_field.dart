import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  final Icon myIcon;
  final bool obscureText;

  const CustomTextForm(
      {super.key,
      required this.hinttext,
      required this.mycontroller,
      required this.validator,
      required this.myIcon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        validator: validator,
        controller: mycontroller,
        obscureText: obscureText,
        style: GoogleFonts.jost(color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          contentPadding: EdgeInsets.all(20),
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20.0), child: myIcon),
          hintText: hinttext,
          hintStyle: GoogleFonts.jost(fontSize: 14, color: Colors.white),
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.white30),
          ),
        ),
      ),
    );
  }
}
