import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/screen/widgets/cart_module.dart';
import 'package:myfirstflutterapp/screen/widgets/cart_page.dart';
import 'package:myfirstflutterapp/screen/widgets/category2.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel model = CartModel(); // Create an instance of CartModel

    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: Categorytwo(),
        
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}