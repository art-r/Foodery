import 'package:flutter/material.dart';
import 'package:deliverapp/models/listbuilder1.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Open Orders',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: restaurantListBuilder(context),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(
            child: Text('New order',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0))),
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
                        'Order:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Order'),
                      ),
                      Text(
                        'Target:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Target')),
                      Text(
                        'Time:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Time')),
                      FlatButton.icon(
                        onPressed: () {
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
