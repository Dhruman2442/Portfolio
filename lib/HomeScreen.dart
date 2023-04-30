import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Widgets.dart';
import 'package:url_launcher/url_launcher.dart';

double std_icon_size = 30;
List<String> gamescoopImages = [
  "assets/Mainscreen.png",
  "assets/Signin.png",
  "assets/Games.png",
  "assets/Valorant Design.png",
  "assets/News Feed.png",
  "assets/News Details.png",
];
List<String> freshwakeImages = [
  "assets/SplashScreen.png",
  "assets/LoginScreen.png",
  "assets/SignupScreen.png",
  "assets/MainScreenFW.png",
  "assets/AlarmScreen.png",
  "assets/StopwatchScreen.png",
  "assets/ProfileScreen.png",
];
List<String> projectName = ["GameScoop", "FreshWake"];
List<String> projectImages = [
  "assets/Valorant Design.png",
  "assets/MainScreenFW.png",
];
bool carousel_visibility = true;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
// appBar: AppBar(backgroundColor: Color(0xFF302E57)),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(seconds: 1),
          backgroundColor: const Color(0xFF000000),
          color: const Color(0xFFECA379),
          onTap: _onItemTapped,
          items: <Widget>[
            Icon(
              Icons.home,
              color: const Color(0xFF000000),
              size: std_icon_size,
            ),
            Icon(
              Icons.person,
              color: const Color(0xFF000000),
              size: std_icon_size,
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10),
          child: FadeAnimation(
            2,
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFECA379),
                      child: TextStyle1("DR", 20, const Color(0xFF000000),
                          FontWeight.w400, TextAlign.center, FontStyle.normal),
                    ),
                    Container(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/Key.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFECA379),
                          ),
                          padding: const EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  "assets/Github.png",
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  _launchGithubURL();
                                },
                              ),
                              GestureDetector(
                                child: Image.asset(
                                  "assets/linkedin.png",
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  _launchLinkedinURL();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                Space(15),
                TextStyle1("Dhruman Rathod", 25, const Color(0xFFECA379),
                    FontWeight.w400, TextAlign.center, FontStyle.normal),
                Space(15),
                TextStyle1(
                    "Mobile Application Developer",
                    35,
                    const Color(0xFFFFFFFF),
                    FontWeight.w600,
                    TextAlign.center,
                    FontStyle.normal),
                Space(15),
                // TextStyle1(
                //     "I love to develop mobile applications\nManage everything on one click.",
                //     15,
                //     const Color(0xFF9A9A9A),
                //     FontWeight.w400,
                //     TextAlign.center,
                //     FontStyle.normal),
                // Space(15),
                // TextStyle1(
                //     "Presenting Imagination to Your Screen",
                //     22,
                //     const Color(0xFFECA379),
                //     FontWeight.w600,
                //     TextAlign.center,
                //     FontStyle.normal),
                Space(15),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Button1("Projects", 20, Color(0xFFECA379),
                      FontWeight.w500, TextAlign.center, FontStyle.normal, () {
                    setState(() {
                      carousel_visibility = !carousel_visibility;
                    });
                  }, context),
                ),
                Space(10),
                CarouselSlider.builder(
                  itemCount: projectImages.length,
                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) =>
                          ListView(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            clipBehavior: Clip.antiAlias,
                            borderOnForeground: true,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken),
                                    image: AssetImage(projectImages[index]),
                                  ),
                                ),
                                child: TextStyle1(
                                    projectName[index],
                                    41,
                                    Color(0xFFFFFFFF),
                                    FontWeight.w600,
                                    TextAlign.center,
                                    FontStyle.normal)),
                          ))
                    ],
                  ),
                  options: CarouselOptions(
                      aspectRatio: 0.8,
                      viewportFraction: 0.6,
                      enlargeFactor: 0.5,
                      enableInfiniteScroll: false),
                ),

                // Visibility(
                //   visible: !carousel_visibility,
                //   child: CarouselSlider.builder(
                //     itemCount: gamescoopImages.length,
                //     itemBuilder:
                //         (BuildContext context, int index, int pageViewIndex) =>
                //             Container(
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(40)),
                //       child: Image.asset(gamescoopImages[index]),
                //     ),
                //     options: CarouselOptions(
                //         aspectRatio: 1.3,
                //         viewportFraction: 0.35,
                //         enlargeFactor: 0.35,
                //         enlargeCenterPage: true,
                //         enableInfiniteScroll: false),
                //   ),
                // ),
                // Visibility(
                //   visible: !carousel_visibility,
                //   child: CarouselSlider.builder(
                //     itemCount: freshwakeImages.length,
                //     itemBuilder:
                //         (BuildContext context, int index, int pageViewIndex) =>
                //             Container(
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(40)),
                //       child: Image.asset(freshwakeImages[index]),
                //     ),
                //     options: CarouselOptions(
                //         aspectRatio: 1.3,
                //         viewportFraction: 0.35,
                //         enlargeFactor: 0.35,
                //         enlargeCenterPage: true,
                //         enableInfiniteScroll: false),
                //   ),
                // ),
              ],
            ),
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
