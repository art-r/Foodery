import 'package:flutter/material.dart';

//auf diesem screen wird ausgewählt ob restaurant oder lieferant ansicht zwei buttons im scaffold mit funktion => navigator.pushNamed('/route')

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Choose your role: ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(height: 25.0),
          FlatButton.icon(
              height: 100.0,
              onPressed: () {
                Navigator.pushNamed(context, '/lieferant');
              },
              icon: Icon(Icons.delivery_dining, size: 75.0),
              label: Text('Deliverer',
                  style: TextStyle(fontSize: 25, letterSpacing: 2))),
          SizedBox(height: 10.0),
          FlatButton.icon(
              height: 100.0,
              onPressed: () {
                Navigator.pushNamed(context, '/restaurant');
              },
              icon: Icon(Icons.food_bank, size: 75.0),
              label: Text('Restaurant',
                  style: TextStyle(fontSize: 25, letterSpacing: 2))),
        ],
      ),
    );
  }
}
