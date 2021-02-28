import 'package:deliverapp/data/auftragdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maps_launcher/maps_launcher.dart';

class Accept extends StatelessWidget {
  TextStyle text = TextStyle(fontSize: 20);
  TextStyle data = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  String temppickuptime = testOrders[1].pickuptime ?? '20:15h';
  String temppickuplocation =
      testOrders[1].pickupLocation ?? 'Stuttgart, Rotebühlplatz';
  String tempaddedtime = testOrders[1].addedtime ?? '10min';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('New Request: ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'pick-up time: ',
                  style: text,
                ),
                Text(temppickuptime, textAlign: TextAlign.center, style: data),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('pick-up at: ', style: text),
                Text(temppickuplocation,
                    textAlign: TextAlign.center, style: data),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('added time: ', style: text),
                Text(tempaddedtime, textAlign: TextAlign.center, style: data),
              ],
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                    height: 100.0,
                    onPressed: () {
                      MapsLauncher.launchQuery(temppickuplocation);
                    },
                    icon: Icon(Icons.check, size: 75.0, color: Colors.green),
                    label: Text('Yes',
                        style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            color: Colors.green))),
                SizedBox(width: 25.0),
                FlatButton.icon(
                    height: 100.0,
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    icon: Icon(Icons.block, size: 75.0, color: Colors.red),
                    label: Text('No',
                        style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            color: Colors.red))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
