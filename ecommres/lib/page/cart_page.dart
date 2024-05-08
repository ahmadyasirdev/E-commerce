import 'package:ecommres/commpontes/button.dart';
import 'package:ecommres/model/product.dart';
import 'package:ecommres/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  //remove


  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeItemFromCart(BuildContext context,Product product){
    showDialog(context: context,
        builder: (context) =>AlertDialog(
          content: Text('remove this item to your cart?'),
          actions: [
            MaterialButton(onPressed: ()=>Navigator.pop(context),
              child: Text('Canal'),
            ),
            MaterialButton(onPressed: (){
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().removeFromCart(product);
            },
                child: Text('Yes')),
          ],
        ),
    );
  }
  //user pressed pay botton
  void payButtonPressed(){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          content: Text('User want to pay! Connect this app to payment backend'),
        ));
  }
  @override
  Widget build(BuildContext context) {
    final cart =context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Cart Page'),
        actions: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context, 'cart_page'), icon: Icon(Icons.shopping_cart))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //cart list
          Expanded(child: cart.isEmpty
              ?Center(child: Text('Your cart is Empty..')):
          ListView.builder(
            itemCount: cart.length,
              itemBuilder: (context,indext){
            final item =cart[indext];
            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.price.toStringAsFixed(2)),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: ()=> removeItemFromCart(context,item),
              ),
            );
          })),
          //pay button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(Child: Text('PAY NOW'), onprass:()=> payButtonPressed() ),
          )
        ],
      ),
    );
  }
}
