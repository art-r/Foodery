import 'package:deliverapp/data/auftragData.dart';
import 'package:flutter/material.dart';
import 'package:deliverapp/models/models.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final TextStyle data = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  final TextStyle text = TextStyle(
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 25.0),
            Text(
              'Open Orders',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView(
                children: testOrders.map((order) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.food_bank_rounded),
                          label: Text(''),
                          height: 10.0,
                        ),
                        Column(children: <Widget>[
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'pick up at: ',
                                style: text,
                              ),
                              Text(
                                order.pickuptime,
                                style: data,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(children: [
                            Text(
                              'ordernumber: ',
                              style: text,
                            ),
                            Text(
                              order.ordernumber,
                              style: data,
                            ),
                          ]),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'pick up location: ',
                                style: text,
                              ),
                              Text(
                                order.pickupLocation,
                                style: data,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(children: [
                            Text(
                              'deliveryman: ',
                              style: text,
                            ),
                            Text(
                              order.deliveryman,
                              style: data,
                            )
                          ]),
                          SizedBox(height: 10.0),
                        ]),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.red],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(),],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                  );
                }).toList(),
              ),
            )
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
