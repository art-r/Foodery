import 'package:deliverapp/data/auftragdata.dart';
import 'package:deliverapp/models/models.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class OrderCreation extends StatelessWidget {
  String tempordernumber, temptargetlocation, temppickuptime;
  TextStyle text = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.00),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'order number:',
              textAlign: TextAlign.center,
              style: text,
            ),
            SizedBox(height: 7),
            TextField(
              onChanged: (String scr) {
                tempordernumber = scr;
              },
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueGrey[800], width: 2.5),
                      borderRadius: BorderRadius.circular(10.0)),
                  border: OutlineInputBorder(),
                  labelText: 'order number'),
            ),
            SizedBox(height: 20),
            Text(
              'target location:',
              textAlign: TextAlign.center,
              style: text,
            ),
            SizedBox(height: 7),
            TextField(
                onChanged: (String scr) {
                  temptargetlocation = scr;
                },
                decoration: InputDecoration(
                    focusColor: Colors.blueGrey[700],
                    hoverColor: Colors.blueGrey[700],
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey[800], width: 2.5),
                        borderRadius: BorderRadius.circular(10.0)),
                    border: OutlineInputBorder(),
                    labelText: 'target location',
                    labelStyle: text)),
            SizedBox(height: 20),
            Text(
              'pick-up time:',
              textAlign: TextAlign.center,
              style: text,
            ),
            SizedBox(height: 7),
            TextField(
                onChanged: (String scr) {
                  temppickuptime = scr;
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueGrey[800], width: 2.5),
                      borderRadius: BorderRadius.circular(10.0)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[400], width: 2.5),
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'pick-up time',
                )),
            SizedBox(height: 20),
            FlatButton.icon(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.grey[400], width: 2.5)),
              onPressed: () {
                Order tempOrder = new Order(
                    ordernumber: tempordernumber,
                    targetLocation: temptargetlocation,
                    pickuptime: temppickuptime,
                    deliveryman: 'Mika');
                testOrders.add(tempOrder);

                Navigator.of(context).maybePop();
              },
              icon: Icon(
                Icons.food_bank_outlined,
                size: 50,
              ),
              label: Text(
                'finish',
                style: TextStyle(fontSize: 30),
              ),
              color: Colors.white,
              splashColor: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
