import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

class ContainerCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cost;
  final String imagepath;
  final VoidCallback? onPressed;

  ContainerCard({
    required this.title,
    required this.subtitle,
    required this.cost,
    required this.imagepath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 200.0,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                elevation: 10.0,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: black1,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(-10.0, 10.0),
                        blurRadius: 2.0,
                        spreadRadius: 4.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 24,
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  height: 167,
                  width: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image: AssetImage(imagepath)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 200,
              child: Container(
                height: 150,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 10),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: greyscale1,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Starting from",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w400,
                        color: greyscale1,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      cost,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: bluelight,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
