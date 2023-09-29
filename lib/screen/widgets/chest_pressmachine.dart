import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/screen/widgets/category2.dart';

import 'package:scoped_model/scoped_model.dart';

import 'cart_module.dart';

class CHESTPRESS extends StatefulWidget {
  const CHESTPRESS({Key? key}) : super(key: key);

  @override
  State<CHESTPRESS> createState() => _CHESTPRESSState();
}

class _CHESTPRESSState extends State<CHESTPRESS> {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Chest Press Machine",
        subtitle: "New",
        cost: 36.0,
        imagepath: "assets/images/Cpress1.png",
        qty: 1),
    Product(
        id: 2,
        title: "Zone Squat",
        subtitle: "New",
        cost: 90.0,
        imagepath: "assets/images/Zone-Squat.png",
        qty: 1),
    Product(
        id: 3,
        title: "Chest Fly Machine",
        subtitle: "New",
        cost: 80.0,
        imagepath: "assets/images/fly machine.png",
        qty: 1),
    Product(
        id: 4,
        title: "Bench Press",
        subtitle: "New",
        cost: 60.0,
        imagepath: "assets/images/benchpress.png",
        qty: 1),
    Product(
      id: 5,
      title: "Incline Bench Press",
      subtitle: "New",
      cost: 60.0,
      imagepath: "assets/images/inclinepress.png",
      qty: 1,
    ),
    Product(
      id: 6,
      title: "Decine bench Press",
      subtitle: "New",
      cost: 70.0,
      imagepath: "assets/images/declinepress.png",
      qty: 1,
    ),
  ];

  void onSearchIconTap() {}
  void onShoppingBagIconTap() {
       Navigator.pushNamed(context, '/categorytwo');
  }
  void onBackButtonTap() {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card(
                child: Column(children: <Widget>[
              Image.asset(
                _products[index].imagepath,
                height: 100,
                width: 130,
              ),
              Text(
                _products[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(_products[index].subtitle),
              Text("\$${_products[index].cost.toStringAsFixed(2)}"),
              ElevatedButton(
                  child: Text("Add"),
                  onPressed: () => model.addProduct(_products[index]))
            ]));
          });
        },
      ),

      //     ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //       builder: (context, child, model) {
      //         return ListTile(
      //             leading: Image.network(_products[index].imagepath),
      //             title: Text(_products[index].title),
      //             subtitle:
      //                 Text("\$${_products[index].cost.toStringAsFixed(2)}"),
      //             trailing: ElevatedButton(
      //                 child: Text("Add"),
      //                 onPressed: () => model.addProduct(_products[index])));
      //       },
      //     );
      //   },
      // ),
    );
  }
}
