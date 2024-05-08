


import 'package:ecommres/commpontes/my_drawer.dart';
import 'package:ecommres/commpontes/my_product_title.dart';
import 'package:ecommres/model/product.dart';
import 'package:ecommres/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {

  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shop Page'),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          SizedBox(height: 25,),
          //shop subtitle
          Center(
            child: Text('Pick from selected list of premium products',
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),

          //producte list
          SizedBox(
            height: 600,
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(15),
                itemBuilder: (context,index){
                  final product = products[index];
                  return MyProductTile(product: product);
                }),
          ),
        ],

      )
    );
  }
}
