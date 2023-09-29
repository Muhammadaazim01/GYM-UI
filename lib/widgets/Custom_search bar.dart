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
      width: 400,
      height: 50,
      margin: EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color: bluedark,
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
          hintStyle: TextStyle(color: black60),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
