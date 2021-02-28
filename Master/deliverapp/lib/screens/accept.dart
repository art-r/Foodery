import 'package:deliverapp/data/auftragdata.dart';
import 'package:flutter/material.dart';

class Accept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('New Request: ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          SizedBox(height: 25.0),
          Row(
            children: <Widget>[
              Text(testOrders[1].pickuptime,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            ],
          ),
          Row(
            children: <Widget>[
              Text(testOrders[1].pickupLocation,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            ],
          ),
          Row(
            children: <Widget>[
              Text(testOrders[1].targetLocation,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton.icon(
                  height: 100.0,
                  onPressed: () {},
                  icon: Icon(Icons.check, size: 75.0, color: Colors.green),
                  label: Text('Yes',
                      style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.green))),
              SizedBox(height: 10.0),
              FlatButton.icon(
                  height: 100.0,
                  onPressed: () {},
                  icon: Icon(Icons.block, size: 75.0, color: Colors.red),
                  label: Text('No',
                      style: TextStyle(
                          fontSize: 25, letterSpacing: 2, color: Colors.red))),
            ],
          ),
        ],
      ),
    );
  }
}
