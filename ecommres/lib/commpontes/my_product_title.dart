import 'package:ecommres/model/product.dart';
import 'package:ecommres/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyProductTile extends StatelessWidget {
  final Product  product ;
  const MyProductTile({super.key,required this.product});

  //add to cart button
  void addToCart(BuildContext context){
    showDialog(context: context,
        builder: (context) =>AlertDialog(
          content: Text('Add this item to your cart?'),
          actions: [
            MaterialButton(onPressed: ()=>Navigator.pop(context),
              child: Text('Canal'),
            ),
    MaterialButton(onPressed: (){
      Navigator.pop(context);

      //add to cart
      context.read<Shop>().addToCart(product);
    },
    child: Text('Yes')),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    child: Image.asset(product.imagePath)),
              ),
              SizedBox(height: 25,),

              //product name
              Text(product.name,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10,),

              //product decription
              Text(product.description,
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          SizedBox(height: 25,),

          //product price
          Text("\$"+product.price.toStringAsFixed(2)),
          //add to cart button
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
                onPressed: ()=>addToCart(context),
                icon: Icon(Icons.add)),
          )

        ],
      ),
    );
  }
}
