import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/HomeScreen.dart';
import 'package:portfolio/SignUpScreen.dart';

import '../Widgets/Widgets.dart';

bool _isObscure = true;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: FadeAnimation(
            1,
            Column(
              children: [
                Logo(context),
                Space(25),
                TextStyle1("Welcome!", 30, Colors.white, FontWeight.w600,
                    TextAlign.center, FontStyle.normal),
                Space(25),
                TextStyle1("Adding fun to your life!", 30, Colors.grey.shade300,
                    FontWeight.w600, TextAlign.center, FontStyle.normal),
                Space(25),
                Cards(
                  Colors.deepPurple.shade600.withOpacity(0.1),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextStyle1(
                            "Sign In",
                            30,
                            Colors.white,
                            FontWeight.w600,
                            TextAlign.center,
                            FontStyle.normal),
                        Space(25),
                        Textfield1(
                            "Username",
                            "Enter username",
                            18,
                            Colors.white70,
                            FontWeight.normal,
                            TextAlign.center,
                            FontStyle.normal,
                            "asset/Icons/Person.png"),
                        Space(20),
                        TextfieldPassword(
                            "Password",
                            "Enter password",
                            18,
                            Colors.white70,
                            FontWeight.normal,
                            TextAlign.center,
                            FontStyle.normal,
                            "asset/Icons/Key.png", () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }, _isObscure),
                        Space(40),
                        Button1(
                            "Sign In",
                            20,
                            Colors.purple.shade900,
                            FontWeight.normal,
                            TextAlign.center,
                            FontStyle.normal, () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        }, context),
                        TextButton1(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  SignupScreen()));
                        },
                            "Don't have an account?Sign up",
                            18,
                            Colors.white,
                            FontWeight.normal,
                            TextAlign.center,
                            FontStyle.normal),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}