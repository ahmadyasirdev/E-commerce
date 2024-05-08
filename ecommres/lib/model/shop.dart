import 'package:flutter/foundation.dart';
import 'package:ecommres/model/product.dart';
import 'package:flutter/cupertino.dart';


class Shop extends ChangeNotifier{


  //productes for sale
  final List<Product> _shop =[
//product 1
  Product(name: 'Product 1',
    price: 99.9,
    description: 'item description..more description to describe the product more into here will look like this ',
    imagePath: 'image/m.jpg'
  ),

    //product 2
    Product(name: 'Product 2',
      price: 99.9,
      description: 'item description..',
        imagePath: 'image/cc.webp'
    ),
    //product 3
    Product(name: 'Product 3',
        price: 99.9,
        description: 'item description..',
        imagePath: 'image/pp.jpg'
    ),
    //product 4
    Product(name: 'Product 4',
      price: 99.9,
      description: 'item description..',
        imagePath: 'image/dd.webp'
    ),
    Product(name: 'Product 5',
        price: 99.9,
        description: 'item description..',
        imagePath: 'image/mmmm.jpg'
    ),
    Product(name: 'Product 6',
        price: 99.9,
        description: 'item description..',
        imagePath: 'image/aa.webp'
    ),



  ];

  //user cart
List<Product> _cart =[];

  //get productes list
List<Product> get shop => _shop;



  //get user cart
  List<Product> get cart => _cart;
  //get productes list



  //add item to cart
void addToCart(Product item){
  _cart.add(item);
  notifyListeners();
}


  //remove item from cart
void removeFromCart(Product item){
  _cart.remove(item);
  notifyListeners();
}
}