import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new FlutterMap(
          options: new MapOptions(
            minZoom: 10.0,
            center: new LatLng(40.71, 74.00),
          ),
          layers: [
            new TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.00),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Auftrag planen',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Ziel',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Uhrzeit',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.access_alarm),
                        label: Text('abschicken'),
                        color: Colors.grey,
                        splashColor: Colors.blueGrey,
                      )
                    ],
                  ),
                );
              });
        },
        tooltip: 'increment',
      ),
    );
  }
}
