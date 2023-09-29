import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cost;
  final String imagepath;

  CardItem({
    required this.title,
    required this.subtitle,
    required this.cost,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagepath,
            height: 70,
            width: 70,
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: greyscale1,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      cost,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: bluedark,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: black1,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: black1,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}