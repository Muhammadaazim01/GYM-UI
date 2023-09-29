import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../widgets/shop_card.dart';

class Categoryone extends StatefulWidget {
  const Categoryone({Key? key}) : super(key: key);

  @override
  State<Categoryone> createState() => _CategoryoneState();
}

List<Map<String, String>> ShopCardData = [
 {
    "title": "Adjustable dumbells",
    "subtitle": "New",
    "imagepath": "assets/images/Adjustable-Dumbbells.png"
  },
  {
    "title": "Barbell",
    "subtitle": "New",
    "imagepath": "assets/images/Barbell.png"
  },
  {
    "title": "Weight Plate",
    "subtitle": "New",
    "imagepath": "assets/images/Weight-Plate.png"
  },
  {
    "title": "Kettlebell",
    "subtitle": "New",
    "imagepath": "assets/images/Kettlebell.png"
  },
  {
    "title": "T-Bar",
    "subtitle": "New",
    "imagepath": "assets/images/t-bar Machine.png"
  },
  {
    "title": "Smith Machine",
    "subtitle": "New",
    "imagepath": "assets/images/Smith-Machine.png"
  },
  {
    "title": "Horizontal Leg Press",
    "subtitle": "New",
    "imagepath": "assets/images/Horizontal-Leg-Press.png"
  },
  {
    "title": "Leg Extension",
    "subtitle": "New",
    "imagepath": "assets/images/Leg-Extension.png"
  },
];

class _CategoryoneState extends State<Categoryone> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          leadingWidth: 70,
          backgroundColor: bluelight,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Hilal",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: headingColor,
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: headingColor,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 120),
                      child: InkWell(
                        onTap: onSearchIconTap,
                        child: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: InkWell(
                onTap: onShoppingBagIconTap,
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ShopCard(
                title: ShopCardData[index]["title"]!,
                subtitle: ShopCardData[index]["subtitle"]!,
                imagepath: ShopCardData[index]["imagepath"]!,
              );
            },
            itemCount: ShopCardData.length,
          ),
        ),
      ),
    );
  }
}