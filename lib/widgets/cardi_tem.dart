import 'package:flutter/material.dart';


class Cartitem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  Cartitem({
    required this.icon,
    required this.title,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 48.0,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            child: Text("Add Box"),
          ),
        ],
      ),
    );
  }
}