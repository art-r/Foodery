import 'package:deliverapp/models/models.dart';
import 'package:flutter/material.dart';

Widget listTemplate({Order order}) {
  return new ListTile(
    order: order,
  );
}

class ListTile extends StatelessWidget {
  final Order order;
  ListTile({this.order});
  final TextStyle data = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  final TextStyle text = TextStyle(
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.food_bank_rounded),
                label: Text('approved'),
                height: 10.0,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
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
        ),
      ),
    );
  }
}
