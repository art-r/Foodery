import 'package:deliverapp/data/auftragData.dart';
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
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Open Orders',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: testOrders.map((order) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.food_bank_rounded,
                              size: 50,
                            ),
                            label: Text(''),
                            height: 10.0,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 10.0),
                                Row(children: [
                                  Text(
                                    'Nr. ',
                                    style: text,
                                  ),
                                  Text(
                                    order.ordernumber,
                                    style: data,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'at ',
                                    style: text,
                                  ),
                                  Text(
                                    order.pickuptime,
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
                          colors: order.gradientColor,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: order.gradientColor.first.withOpacity(0.2),
                              blurRadius: 8,
                              spreadRadius: 4,
                              offset: Offset(4, 4)),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
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
