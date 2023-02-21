import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/HomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

import 'LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        gradientBackground:
        const LinearGradient(colors: [Colors.black, Colors.black]),
        image: Image.asset(
          "assets/imgprocessing.png",color: Colors.white,
        ),
        photoSize: 150.0,
        seconds: 3,
        navigateAfterSeconds: HomeScreen(),
        loadingText: Text("Image Processor",
            style: GoogleFonts.balooBhai2(color: Colors.white, fontSize: 50)),
        loaderColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
    );
  }
}