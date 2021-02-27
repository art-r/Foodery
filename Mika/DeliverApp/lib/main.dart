
import 'package:DeliverApp/screens/Lieferant/lieferantlist.dart';
import 'package:DeliverApp/screens/Restaurant/restaurantlist.dart';
import 'package:flutter/material.dart';
import 'screens/startup.dart';

//main file => festlegen welche routen vorhanden sind und die main route: Startup()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackathon',
      routes: {
        '/': (context) => LieferantList(),
        '/lieferant': (context) => LieferantList(),
        '/restaurant': (context) => RestaurantList(),
      },
    );
  }
}

