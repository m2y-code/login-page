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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background-5.jpg'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: Form(
                  key: formState,
                  child: Container(
                    height: 470,
                    width: 400,
                    decoration: BoxDecoration(
                      // color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2, color: Colors.white30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Animate(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'LogIn',
                            style: GoogleFonts.jost(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            hinttext: 'Enter your email',
                            mycontroller: email,
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Can't Be Empty";
                              }
                            },
                            myIcon: Icon(
                              Icons.email,
                              size: 20,
                              color: Colors.white,
                            ),
                            obscureText: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            hinttext: 'Enter your password',
                            mycontroller: password,
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Can't Be Empty";
                              }
                            },
                            myIcon: Icon(
                              Icons.lock,
                              size: 20,
                              color: Colors.white,
                            ),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (newBool) {
                                        setState(
                                          () {
                                            isChecked = newBool;
                                          },
                                        );
                                      },
                                      tristate: true,
                                      checkColor: Colors.black,
                                      activeColor: Colors.white,
                                    ),
                                    Text(
                                      'Remember me',
                                      style: GoogleFonts.jost(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Forgot passord?',
                                  style: GoogleFonts.jost(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (formState.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, 'homepage');
                              } else {
                                print('Erorr');
                              }
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.jost(
                                        color: Colors.black, fontSize: 19),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account?',
                                style: GoogleFonts.jost(
                                    color: Colors.white, fontSize: 15),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, 'signup');
                                },
                                child: Text(
                                  'SignUp',
                                  style: GoogleFonts.jost(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ).animate().fade(duration: 2000.ms)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
