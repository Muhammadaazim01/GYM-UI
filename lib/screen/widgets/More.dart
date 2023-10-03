import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  void _onShoppingBagIconPressed() {}

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
              "MORE",
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
              child: IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                onPressed: _onShoppingBagIconPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
