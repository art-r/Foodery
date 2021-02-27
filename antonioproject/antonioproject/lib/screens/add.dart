import 'package:flutter/material.dart';

class PlaceholderWidget1 extends StatelessWidget {
 final Color color;

 PlaceholderWidget1(this.color);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
 }
}