import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Functions/Url.dart';
import 'package:portfolio/Widgets/Widgets.dart';
import 'package:url_launcher/url_launcher.dart';

double std_icon_size = 25;
List<String> imageURL = [
  "assets/imgprocessing.png",
];

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<String> imageUrls = [];
  //
  // _HomeScreenState({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      backgroundColor: Color(0xFF000000),
      // appBar: AppBar(backgroundColor: Color(0xFF302E57)),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xFF000000),
          color: Color(0xFF302E57),
          onTap: _onItemTapped,
          items: <Widget>[
            Icon(
              Icons.home,
              color: Color(0xFFFFFFFF),
              size: std_icon_size,
            ),
            Icon(
              Icons.search,
              color: Color(0xFFFFFFFF),
              size: std_icon_size,
            ),
            Icon(
              Icons.settings,
              color: Color(0xFFFFFFFF),
              size: std_icon_size,
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 10),
        child: FadeAnimation(
          2,
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF302E57),
                    child: TextStyle1("DR", 20, Color(0xFFFFFFFF),
                        FontWeight.w400, TextAlign.center, FontStyle.normal),
                  ),
                  Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Key.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.1,
                        color: Color(0xFF302E57),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Image.asset("assets/Key.png"),
                              onTap: () {
                                _launchGithubURL();
                              },
                            ),
                            GestureDetector(
                              child: Image.asset("assets/Key.png"),
                              onTap: () {
                                _launchLinkedinURL();
                              },
                            ),
                            GestureDetector(
                              child: Image.asset("assets/Key.png"),
                              onTap: () {
                                _launchGithubURL();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
              TextStyle1("DR", 20, Color(0xFFFFFFFF), FontWeight.w400,
                  TextAlign.center, FontStyle.normal),
              TextStyle1("DR", 20, Color(0xFFFFFFFF), FontWeight.w400,
                  TextAlign.center, FontStyle.normal),
              TextStyle1("DR", 20, Color(0xFFFFFFFF), FontWeight.w400,
                  TextAlign.center, FontStyle.normal),
            ],
          ),
        ),
      ),
    );
  }
}

const _githuburl = 'https://github.com/Dhruman2442';
const _linkedinurl = 'https://www.linkedin.com/in/dhruman-rathod/';

/// Put your custom url here.
void _launchGithubURL() async => await launch(_githuburl, forceWebView: true)
    ? await launch(_githuburl)
    : throw 'Could not launch $_githuburl';

/// Put your custom url here.
void _launchLinkedinURL() async =>
    await launch(_linkedinurl, forceWebView: true)
        ? await launch(_linkedinurl)
        : throw 'Could not launch $_linkedinurl';
