import 'package:ecommres/commpontes/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //logo
          Center(
            child: Icon(Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(height: 25,),
          //title
          Text('Minimal Shop',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          

          //subtitle
          Text('Premium Quality Products',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
          SizedBox(height: 25,),

          //button
          MyButton(Child: Icon(Icons.arrow_forward), onprass: (){
            Navigator.pushNamed(context, 'ShopPage');
          })
        ],
      ),
    );
  }
}
