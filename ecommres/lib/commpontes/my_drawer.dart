import 'package:ecommres/commpontes/my_list_tile.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag,size: 72,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),)),
              SizedBox(height: 25,),


              //shop title
              MyListTile(text: 'Shop', icon: Icons.home, onTap: (){
                Navigator.pop(context);
              }),


              //cart title
              MyListTile(text: 'Cart', icon: Icons.shopping_cart, onTap: (){
                Navigator.pop(context);
                //go to cart
                Navigator.pushNamed(context, 'cart_page');
              }),
            ],
          ),
          //Derwer



          //exit s
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(text: 'Exit', icon: Icons.logout, onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, 'IntroPage', (route) => false);
            }),
          )
        ],
      ),
    );
  }
}
