import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/constants/app_colour.dart';

import '../widgets/Custom_search bar.dart';
import '../widgets/card_item.dart';

class Homeone extends StatefulWidget {
  const Homeone({super.key});

  @override
  State<Homeone> createState() => _HomeoneState();
}

List<String> cardimages = [
  "assets/images/Banner Card.png",
  "assets/images/Banner Card (1).png",
  "assets/images/Banner Card (2).png",
];
List<Map<String, String>> cardItemsData = [
  {
    "title": "DUMBLE STAND",
    "subtitle": "New",
    "cost": "Unit\$12", 
    "imagepath": "assets/images/images.png"
  },
  {
    "title": "20 KG DUMBLE",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath":
        "assets/images/136144-gym-dumbbells-hantel-fitness-free-clipart-hd.png"
  },
  {
    "title": "DUMBLE BOWL",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/images.jpg"
  },
    {
    "title": "LEG PRESS",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/legpress.png"
  },
    {
    "title": "INCLINE PRESS",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/chestpress.png"
  },
];
List<Map<String, String>> teaItemsData = [
  {
    "title": "Shoulder Press",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/shoulder.png"
  },
  {
    "title": "4-station pulley",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath":
        "assets/images/4-Station-Multi.png"
  },
      {
    "title": "Rowing Machine",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/rowing.png"
  },
  {
    "title": "Leg Extension",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/leg extension.png"
  },
    {
    "title": "Bicep Curl",
    "subtitle": "New",
    "cost": "Unit\$12",
    "imagepath": "assets/images/bicep.png"
  },
   
    
];


class _HomeoneState extends State<Homeone> {
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
              "Hey, Hilal",
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                Center(
                  child: CustomBar(
                    hintText: "Search Products or store",
                    prefixIcon: Icons.search,
                    prefixiconcolor:greyscale1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery to",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: greyscale1,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Green Way 3000, Sylhet",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: greyscale1,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Within",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: greyscale1,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "1 Hour",
                                style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: greyscale1,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12.0),
                  itemCount: 3,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildCard(index, cardimages[index],
                        isFirstImage: index == 0);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: greyscale1,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(width: 12),
                  itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardItem(
                        title: cardItemsData[index]["title"]!,
                        subtitle: cardItemsData[index]["subtitle"]!,
                        cost: cardItemsData[index]["cost"]!,
                        imagepath: cardItemsData[index]["imagepath"]!,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Deals on Workout Equipments",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: greyscale1,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(width: 12),
                  itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardItem(
                        title: teaItemsData[index]["title"]!,
                        subtitle: teaItemsData[index]["subtitle"]!,
                        cost: teaItemsData[index]["cost"]!,
                        imagepath: teaItemsData[index]["imagepath"]!,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.home_sharp,
            color: yellowlight,
          ),
          backgroundColor: Colors.black,
          tooltip: "Home",
          elevation: 10,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_outlined),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(int index, String imagePath, {bool isFirstImage = false}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 120,
              width: isFirstImage ? 400 : 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      );
}