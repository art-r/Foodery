import 'package:flutter/material.dart';

class RouteCreation extends StatelessWidget {
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
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Enter destination:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Target'),
              ),
              Text(
                'Maximum number of reroutings:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              MyStatefulWidget(),
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
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      isExpanded: true,
      style: TextStyle(color: Colors.blueGrey),
      underline: Container(
        height: 2,
        color: Colors.blueGrey,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['one', 'two', 'three', 'four', 'five']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
