import 'package:deliverapp/models/listbuilder2.dart';
import 'package:flutter/material.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class LieferantList extends StatefulWidget {
  @override
  _LieferantListState createState() => _LieferantListState();
}

class _LieferantListState extends State<LieferantList> {
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
                child: lieferantListBuilder(context),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Center(
                child: Text('+',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0))),
            onPressed: () {
              Navigator.pushNamed(context, '/routeCreate');
            }));
  }
}
