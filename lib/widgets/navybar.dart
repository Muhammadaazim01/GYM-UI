// import 'package:flutter/material.dart';
// import 'package:myfirstflutterapp/screen/hometwo.dart';
// import 'package:myfirstflutterapp/screen/widgets/More.dart';
// import 'package:myfirstflutterapp/screen/widgets/category_one.dart';
// import 'package:myfirstflutterapp/screen/widgets/favurite.dart';

// class NavyBar extends StatefulWidget {
//   const NavyBar({Key? key}) : super(key: key);

//   @override
//   State<NavyBar> createState() => _NavyBarState();
// }

// class _NavyBarState extends State<NavyBar> {
//   int _selectedTab = 0;

//   List<Widget> _pages = [Homeone(), Categoryone(), favurite(), more()];
//   void _changeTab(int index) {
//     setState(() {
//       _selectedTab = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedTab],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedTab,
//         onTap: (index) => _changeTab(index),
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.category_outlined), label: "Categories"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_outline), label: "Favourite"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.more_vert_outlined), label: "More"),
//         ],
//       ),
//     );
//   }
// }
