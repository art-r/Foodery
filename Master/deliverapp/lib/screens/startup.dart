/* import 'package:flutter/material.dart';


//auf diesem screen wird ausgewählt ob restaurant oder lieferant ansicht zwei buttons im scaffold mit funktion => navigator.pushNamed('/route')

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    );
  }
} */

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
          Text(
            'Choose your role: ',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25.0),
          FlatButton.icon(
              height: 50.0,
              onPressed: () {
                Navigator.pushNamed(context, '/lieferant');
              },
              icon: Icon(Icons.delivery_dining, size: 40.0),
              label: Text('Deliverer')),
          SizedBox(height: 10.0),
          FlatButton.icon(
              height: 50.0,
              onPressed: () {
                Navigator.pushNamed(context, '/restaurant');
              },
              icon: Icon(Icons.food_bank, size: 40.0),
              label: Text('Restaurant')),
        ],
      ),
    );
  }
}
