import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Logo(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 65),
    width: MediaQuery.of(context).size.width * 0.70,
    height: 175,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
        image: const AssetImage('asset/Icons/GamescoopLogo.png'),
      ),
    ),
    child: SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
    ),
  );
}

Widget TextStyle1(String text, double fontSize, Color color,
    FontWeight fontWeight, TextAlign textAlign, FontStyle fontStyle) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.rubik(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle),
  );
}

Widget Space(double height) {
  return SizedBox(
    height: height,
  );
}

Widget Textfield1(
    String ltext,
    String htext,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    String image) {
  return TextField(
    style: TextStyle(color: color, fontSize: fontSize),
    decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.white70)),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            image,
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.white)),
        labelText: ltext,
        labelStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintText: htext),
  );
}

Widget Textfield2(
    String ltext,
    String htext,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    String image) {
  return TextField(
    keyboardType: TextInputType.number,
    style: TextStyle(color: Colors.white, fontSize: fontSize),
    decoration: InputDecoration(
        prefixIconColor: color,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            image,
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.white70)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        labelText: ltext,
        labelStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintText: htext),
  );
}

Widget TextfieldPassword(
    String ltext,
    String htext,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    String image,
    VoidCallback onclick,
    bool obscureText) {
  return TextField(
    style: TextStyle(color: Colors.white, fontSize: fontSize),
    obscureText: obscureText,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.white70)),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      labelText: ltext,
      hintText: htext,
      labelStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle),
      hintStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle),
      prefixIcon: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          image,
          width: 24,
          height: 24,
          fit: BoxFit.fill,
        ),
      ),
      suffixIconColor: color,
      suffixIcon: IconButton(
        icon: Icon(
          obscureText ? Icons.visibility_off : Icons.visibility,
          color: color,
        ),
        onPressed: onclick,
      ),
    ),
  );
}

Widget Button1(
    String text,
    double size,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    VoidCallback onPressed,
    BuildContext context) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration:
        const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
    height: 50,
    width: MediaQuery.of(context).size.width * 0.95,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      // color: color,

      child: TextStyle1(
          text, size, Colors.white, fontWeight, textAlign, fontStyle),
    ),
  );
}

Widget TextButton1(
    VoidCallback onpressed,
    String text,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle) {
  return TextButton(
    onPressed: onpressed,
    child: TextStyle1(text, fontSize, color, fontWeight, textAlign, fontStyle),
  );
}

Widget IconButtons(Icon icon, VoidCallback onpressed) {
  return IconButton(icon: icon, onPressed: onpressed);
}

Widget Cards(
  Color color,
  Widget child,
) {
  return Card(
    shadowColor: Colors.black,
    borderOnForeground: true,
    semanticContainer: true,
    elevation: 5,
    margin: const EdgeInsets.all(10),
    color: color,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: child,
  );
}

Widget ProjectCards(BuildContext context, Color color, AssetImage assetImage) {
  return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        clipBehavior: Clip.antiAlias,
        borderOnForeground: true,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  image: assetImage),
            ),
            child: TextStyle1("GameScoop", 40, color, FontWeight.w600,
                TextAlign.center, FontStyle.normal)),
      ));
}

// Page Widget
Widget customgamelisttile(Color colors, String images, VoidCallback onpress) {
  return GestureDetector(
    onTap: onpress,
    child: Card(
      shadowColor: Colors.grey.shade400,
      margin: const EdgeInsets.all(15),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.grey.shade500.withOpacity(0.2),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF9CAFF0),
                Color(0x51000000),
              ],
            )),
        child: Image.asset(
          images,
          height: 50,
          width: 50,
        ),
      ),
    ),
  );
}

Widget WeaponsTiles() {
  return TextStyle1("Weapons", 16, Colors.white, FontWeight.bold,
      TextAlign.center, FontStyle.normal);
}

Widget MapsTiles() {
  return TextStyle1("Maps", 16, Colors.white, FontWeight.bold, TextAlign.center,
      FontStyle.normal);
}

//////////////////////////////////////////////////////////////////////////////////

// News Page Widget
Widget customnewstile(
  String title,
  Color color,
) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.white,
      elevation: 3,
      color: color,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   alignment: Alignment.center,
                //   image: images,
                //   colorFilter: ColorFilter.mode(
                //       Colors.transparent.withOpacity(0.7), BlendMode.srcATop),
                // ),
                ),
            child: ListTile(
              title: TextStyle1(title, 20, Colors.white, FontWeight.w400,
                  TextAlign.center, FontStyle.normal),
            ),
          ),
          Container(
              color: Colors.transparent,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "asset/Icons/GamescoopLogo.png",
                height: 30,
                width: 30,
              ))
        ],
      ));
}

Widget customNewsDetails(String images, String title, String content) {
  return Card(
    color: Colors.black,
    child: Column(
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          shadowColor: Colors.grey.shade700,
          child: Image.network(
            images,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: TextStyle1(title, 15, Colors.white, FontWeight.bold,
                    TextAlign.center, FontStyle.normal),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextStyle1(content, 15, Colors.white, FontWeight.normal,
                    TextAlign.center, FontStyle.normal),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget RolesTile(
    String title, AssetImage images, Color colors, VoidCallback click) {
  return GestureDetector(
    onTap: click,
    child: Card(
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.grey.shade900,
                Colors.black,
              ],
            )),
        child: ListTile(
          title: TextStyle1(title, 18, colors, FontWeight.bold,
              TextAlign.center, FontStyle.normal),
          leading: Image(
            height: 40,
            image: images,
          ),
          trailing: Image(
            height: 40,
            image: images,
          ),
        ),
      ),
    ),
  );
}

Widget buildSliderAgents(BuildContext context, List<Widget> items) {
  return CarouselSlider(
    items: items,

    //Slider Container properties
    options: CarouselOptions(
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: true,
      scrollPhysics: const BouncingScrollPhysics(),
      // autoPlay: true,
      height: 350,
      autoPlayCurve: Curves.ease,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: const Duration(milliseconds: 1000),
      viewportFraction: 0.6,
      disableCenter: true,
      clipBehavior: Clip.hardEdge,
    ),
  );
}

Widget SliderAgentListTile(String title, Color colors, AssetImage images,
    VoidCallback AgentDetailsPage) {
  return Column(
    children: [
      GestureDetector(
          onTap: AgentDetailsPage,
          child: Card(
            elevation: 10,
            shadowColor: Colors.grey.shade900,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.transparent,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    //color design background
                    Container(
                        height: 275,
                        width: 200,
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colors.withOpacity(0.4),
                          ),
                          child: const SizedBox(),
                        )),

                    //Image of the agents
                    Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: images,
                          ),
                        ),
                        child: const SizedBox(
                          height: 243,
                          width: 200,
                        )),
                  ],
                ),
                Space(10),
                TextStyle1(title, 18, Colors.white, FontWeight.w500,
                    TextAlign.center, FontStyle.normal)
              ],
            ),
          )),
    ],
  );
}

Widget buildSliderMaps(BuildContext context, List<Widget> items) {
  return CarouselSlider(
    items: items,

    //Slider Container properties
    options: CarouselOptions(
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: true,
      scrollPhysics: const BouncingScrollPhysics(),
      // autoPlay: true,
      autoPlayCurve: Curves.ease,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: const Duration(milliseconds: 1000),
      viewportFraction: 0.7,
      disableCenter: true,
      clipBehavior: Clip.hardEdge,
    ),
  );
}

Widget SliderMapListTile(String title, Color colors, String images) {
  return Column(children: [
    Card(
        elevation: 10,
        shadowColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.transparent,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(images),
                        opacity: 0.8,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const SizedBox(
                      width: 300,
                      height: 175,
                    )),
                Space(10),
                TextStyle1(title, 18, Colors.white, FontWeight.w500,
                    TextAlign.center, FontStyle.normal)
              ],
            ),
          ],
        ))
  ]);
}

Widget Tabs(
    VoidCallback onPressed,
    String text,
    double size,
    Color color,
    Color tabtextcolor,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    BuildContext context) {
  return GestureDetector(
    onTap: onPressed,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Center(
        // child:
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          child: const SizedBox(
            height: 5,
            width: 40,
          ),
        ),
        // ),
        Container(
          width: MediaQuery.of(context).size.width / 3,
          margin: const EdgeInsets.only(bottom: 15),
          child: TextStyle1(
              text, size, tabtextcolor, fontWeight, textAlign, fontStyle),
        ),
      ],
    ),
  );
}
