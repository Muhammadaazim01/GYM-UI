import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';
import 'package:myfirstflutterapp/screen/widgets/chest_pressmachine.dart';

import '../../widgets/container_card.dart';

class Categorytwo extends StatefulWidget {
  const Categorytwo({super.key});

  @override
  State<Categorytwo> createState() => _CategorytwoState();
}

List<Map<String, String>> ContainerCardData = [
  {
    "title": " Chest Press Machine",
    "subtitle": "New",
    "cost": "£10,00",
    "imagepath": "assets/images/Cpress1.png"
  },
  {
    "title": "Zone Squat",
    "subtitle": "New",
    "cost": "£6,00",
    "imagepath": "assets/images/Zone-Squat.png"
  },
  {
    "title": "Chest Fly Machine",
    "subtitle": "New",
    "cost": "£8,00",
    "imagepath": "assets/images/fly machine.png"
  },
  {
    "title": "Bench Press",
    "subtitle": "New",
    "cost": "£2,00",
    "imagepath": "assets/images/benchpress.png"
  },
  {
    "title": "Incline Bench Press",
    "subtitle": "New",
    "cost": "£2,00",
    "imagepath": "assets/images/inclinepress.png"
  },
  {
    "title": "Decline bench Press",
    "subtitle": "New",
    "cost": "£2,00",
    "imagepath": "assets/images/declinepress.png"
  },
];

class _CategorytwoState extends State<Categorytwo> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {
    Navigator.pushNamed(context, "/CHESTPRESS");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          leadingWidth: 70,
          backgroundColor: black100,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi,Aazim",
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
                        fontSize: 35,
                        fontWeight: FontWeight.w300,
                        color: headingColor,
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 35,
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
                child: Icon(Icons.shopify_outlined),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Chest Press Machine'),
                      onPressed: () {},
                      backgroundColor: yellowlight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Seated Dip Machine'),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Chest Fly Machine'),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("Bench Press"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("Incile Bench Press"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: ContainerCardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return CHESTPRESS();
                          }));
                        },
                        child: ContainerCard(
                          title: ContainerCardData[index]["title"]!,
                          subtitle: ContainerCardData[index]["subtitle"]!,
                          cost: ContainerCardData[index]["cost"]!,
                          imagepath: ContainerCardData[index]["imagepath"]!,
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
