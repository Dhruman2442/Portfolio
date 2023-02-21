import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Widgets/Widgets.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      FadeAnimation(2, Container(child:TextStyle1("Hello World", 20, Colors.black, FontWeight.w400, TextAlign.center, FontStyle.italic)))
      ),
    );
  }

}