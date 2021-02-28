import 'package:deliverapp/data/auftragdata.dart';
import 'package:deliverapp/models/models.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class OrderCreation extends StatelessWidget {
  String tempordernumber, temptargetlocation, temppickuptime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.00),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'order number:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (String scr) {
                tempordernumber = scr;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'order number'),
            ),
            Text(
              'Target:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            TextField(
                onChanged: (String scr) {
                  temptargetlocation = scr;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Target')),
            Text(
              'Time:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            TextField(
                onChanged: (String scr) {
                  temppickuptime = scr;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Time')),
            FlatButton.icon(
              onPressed: () {
                Order tempOrder = new Order(
                    ordernumber: tempordernumber,
                    targetLocation: temptargetlocation,
                    pickuptime: temppickuptime,
                    deliveryman: 'Mika');
                testOrders.add(tempOrder);

                Navigator.of(context).maybePop();
              },
              icon: Icon(Icons.food_bank_outlined),
              label: Text('finish'),
              color: Colors.grey,
              splashColor: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
