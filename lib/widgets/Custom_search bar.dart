import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

class CustomBar extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final ValueChanged<String>? onTextChanged;
  final Color prefixiconcolor;

  CustomBar({
    required this.hintText,
    required this.prefixIcon,
    this.onTextChanged,
    required this.prefixiconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 35,
      margin: EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color:Greyscale3,
        borderRadius: BorderRadius.circular(28),
      ),
      child: TextField(
        onChanged: onTextChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: prefixiconcolor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
