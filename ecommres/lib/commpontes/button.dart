import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget Child ;
  final void Function()? onprass;
  const MyButton({super.key,
    required this.Child,
    required this.onprass
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onprass ,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(25),
        child:Child ,
      ),
    );
  }
}
