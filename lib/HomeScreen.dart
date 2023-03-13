import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Widgets.dart';

double std_icon_size = 25;
List<String> imageURL = [
  "assets/imgprocessing.png",
];

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 50.0;

  // List<String> imageUrls = [];
  //
  // _HomeScreenState({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(backgroundColor: Color(0xFF302E57)),
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
        body: Center(
          child: Column(children: [
            FadeAnimation(
                2,
                //   Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         'Slider Value: ${_sliderValue.round()}',
                //         style: TextStyle(fontSize: 24.0),
                //       ),
                //       SizedBox(height: 24.0),
                //       Slider(
                //         value: _sliderValue,
                //         min: 0.0,
                //         max: 100.0,
                //         divisions: 10,
                //         label: '${_sliderValue.round()}',
                //         onChanged: (value) {
                //           setState(() {
                //             _sliderValue = value;
                //           });
                //         },
                //       ),
                //     ],
                //   ),
                Cards(
                    Color(0xFF302E57),
                    Container(
                      child: Text("Hello World"),
                    ))),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                height: 200.0,
                aspectRatio: 1,
                scrollPhysics: BouncingScrollPhysics(),
                enlargeCenterPage: true,
              ),
              items: imageURL.map((imageURL) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      margin: EdgeInsets.symmetric(horizontal: 1.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(imageURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ]),
        ));
  }
}
