import 'package:flutter/material.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class LieferantList extends StatefulWidget {
  @override
  _LieferantListState createState() => _LieferantListState();
}

class _LieferantListState extends State<LieferantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active deliveries'),
        centerTitle: true,
      ),
      body: Container(child: Text('Test')),
      floatingActionButton: FloatingActionButton(
        child: Center(
            child: Text('+',
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
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter number')),

//                            @override
//                           Widget build(BuildContext context) {
//                             return DropdownButton<String>(
//                             value: dropdownValue,
//                             icon: Icon(Icons.arrow_downward),
//                             iconSize: 24,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.deepPurple),
//                             underline: Container(
//                             height: 2,
//                             color: Colors.deepPurpleAccent,
//                             ),
//                             onChanged: (String newValue) {
//                             setState(() {
//                             dropdownValue = newValue;
//                             });
//                             },
//                             items: <String>['One', 'Two', 'Three','Four','Five']
//                             .map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                             );
//                             }).toList(),
//                             );
//   }
// }

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
