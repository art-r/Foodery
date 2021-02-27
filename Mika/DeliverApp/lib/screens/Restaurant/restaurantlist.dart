
import 'package:DeliverApp/data/auftragdata.dart';
import 'package:DeliverApp/models/models.dart';
import 'package:flutter/material.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  String txt1 = "";
  String txt2 = "";
  String txt3 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Orders'),
        centerTitle: true,
      ),
      body: Container(
        child: Text('Test')
        ),
      floatingActionButton: FloatingActionButton(
        child: Center(child: Text('New order',
        textAlign: TextAlign.center,)),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Ordernumber:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                          TextField(
                            onChanged: (String scr){
                              txt1 = scr;
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ordernumber...'),
                        ),
                        Text(
                          'Target:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                        TextField(
                          onChanged: (String scr){
                              txt2 = scr;
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Target...')
                        ),
                        Text(
                          'Time:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                        TextField(
                            onChanged: (String scr){
                              txt3 = scr;
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Time...')
                        ),
                        FlatButton.icon(
                          onPressed: () {
                            Order currentOrder = Order(deliveryman: "Antonio",targetLocation: txt2, pickuptime: txt3);
                            testOrders.add(currentOrder);
                            Navigator.of(context).maybePop();
                          },
                          icon: Icon(Icons.food_bank_outlined),
                          label: Text('finish'),
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