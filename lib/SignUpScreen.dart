import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/HomeScreen.dart';
import '../Widgets/Widgets.dart';
import 'LoginScreen.dart';

bool _isObscure = true;
bool _ShowSignupContainer = true;
bool _ShowPasswordContainer = false;

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Column(
                      children: [
                        Visibility(
                            child: Signupwidget(),
                            visible: _ShowSignupContainer),
                        Visibility(
                            child: Passwordwidget(),
                            visible: _ShowPasswordContainer),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Signupwidget() {
    return FadeAnimation(
      1,
      Column(
        children: [
          TextStyle1("Sign Up", 30, Colors.white, FontWeight.w600,
              TextAlign.center, FontStyle.normal),
          Space(25),
          Textfield1(
              "Email",
              "Enter email",
              18,
              Colors.white70,
              FontWeight.normal,
              TextAlign.center,
              FontStyle.normal,
              "asset/Icons/Email.png"),
          Space(20),
          Textfield2(
              "Phone Number",
              "Enter phone number",
              18,
              Colors.white70,
              FontWeight.normal,
              TextAlign.center,
              FontStyle.normal,
              "asset/Icons/Key.png"),
          Space(20),
          GestureDetector(
            onTap: () {
              setState(() {
                _ShowSignupContainer = false;
                _ShowPasswordContainer = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white70,
                )
              ],
            ),
          ),
          TextButton1(() {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          }, "Already have an Account?Sign In", 18, Colors.white,
              FontWeight.normal, TextAlign.center, FontStyle.normal),
        ],
      ),
    );
  }

  Widget Passwordwidget() {
    return FadeAnimation(
      1,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButtons(
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white70,
              ), () {
            setState(() {
              _ShowSignupContainer = true;
              _ShowPasswordContainer = false;
            });
          }),
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
          Space(25),
          TextfieldPassword(
              "Confirm Password",
              "Enter password again",
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
          Button1("Sign Up", 20, Colors.purple.shade900, FontWeight.normal,
              TextAlign.center, FontStyle.normal, () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>  HomeScreen()));
              }, context),
        ],
      ),
    );
  }

}
