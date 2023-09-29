import 'package:flutter/material.dart';

import 'package:myfirstflutterapp/constants/app_colour.dart';
import 'package:myfirstflutterapp/widgets/custom_button.dart';

class screentwo extends StatefulWidget {
  const screentwo({super.key});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  final PageController _pageController = PageController(initialPage: 1);
  final int _numPages = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: _numPages,
          itemBuilder: (BuildContext context, int index) {
            return _buildPage(index);
          },
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(50.0),
        height: 812,
        width: 375,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bluelight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Your holiday shopping delivered to Screen two",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w700,
                      color: headingColor,
                    ),
                  ),
                ),
                Text(
                  "There's something for everyone to enjoy with Sweet Shop Favourites screen 2",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w500,
                    color: fontColor,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/images/1868038-200 (1).jpg",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            TextButton.icon(
              style: buttonPrimary,
              onPressed: () {},
              label: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}