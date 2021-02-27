import 'package:deliverapp/screens/Lieferant/lieferantlist.dart';
import 'package:flutter/material.dart';

//auf diesem screen wird ausgewählt ob restaurant oder lieferant ansicht zwei buttons im scaffold mit funktion => navigator.pushNamed('/route')

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('Choose your role: '),
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/lieferant');
              },
              icon: Icon(Icons.delivery_dining),
              label: Text('Deliverer')),
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/restaurant');
              },
              icon: Icon(Icons.food_bank),
              label: Text('Restaurant'))
        ],
      ),
    );
  }
}
