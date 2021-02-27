import 'package:flutter/material.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
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
        child: Center(child: Text('New order')),
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
                            border: OutlineInputBorder(),
                            labelText: 'Order'),
                        ),
                        Text(
                          'Target:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                        TextField(
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Target')
                        ),
                        Text(
                          'Time:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                        TextField(
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Time')
                        ),
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