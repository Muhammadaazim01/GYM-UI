
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/screen/home/home_view.dart';
import 'package:myfirstflutterapp/screen/hometwo.dart';
import 'package:myfirstflutterapp/screen/widgets/More.dart';
import 'package:myfirstflutterapp/screen/widgets/category2.dart';
import 'package:myfirstflutterapp/screen/widgets/favurite.dart';

import 'category_one.dart';

class MyPageView extends StatelessWidget {
  final PageController _controller = PageController();
  MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children2 = [
          HomeView(),
          Homeone(),
          Categoryone(),
          Categorytwo(),
          favurite(),
          More(),
        ];
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: children2,
      ),
    );
  }
}
