import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

class favurite extends StatefulWidget {
  const favurite({super.key});

  @override
  State<favurite> createState() => _favuriteState();
}

class _favuriteState extends State<favurite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            leadingWidth: 70,
            backgroundColor: bluelight,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Favourite",
                style: TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ],
      
    )
    )
    );
  }
}
