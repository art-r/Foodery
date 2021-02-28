import 'package:deliverapp/models/models.dart';
import 'package:deliverapp/screens/Restaurant/orderCreation.dart';
import 'package:deliverapp/screens/accept.dart';
import 'package:flutter/material.dart';
import 'package:deliverapp/screens/Lieferant/lieferantlist.dart';
import 'package:deliverapp/screens/Restaurant/restaurantlist.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';
import 'screens/Lieferant/routecreation.dart';
import 'screens/startup.dart';

//main file => festlegen welche routen vorhanden sind und die main route: Startup()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackathon',
      routes: {
        '/': (context) => Startup(),
        '/accept': (context) => Accept(),
        '/orderCreate': (context) => OrderCreation(),
        '/routeCreate': (context) => RouteCreation(),
        '/lieferant': (context) => LieferantList(),
        '/restaurant': (context) => RestaurantList(),
      },
    );
  }
}
