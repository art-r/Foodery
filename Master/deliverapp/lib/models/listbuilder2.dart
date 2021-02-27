import 'package:deliverapp/data/auftragdata.dart';
import 'package:deliverapp/data/colors.dart';
import 'package:deliverapp/models/models.dart';
import 'package:flutter/material.dart';

Widget lieferantListBuilder(BuildContext context) {
  final TextStyle data = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  final TextStyle text = TextStyle(
    fontSize: 20,
  );

  return ListView.builder(
      itemCount: testOrders.length,
      itemBuilder: (context, index) {
        Order order = Order(
          deliveryman: testOrders[index].deliveryman ?? 'default',
          pickupLocation: testOrders[index].pickupLocation ?? 'default',
          targetLocation: testOrders[index].targetLocation ?? 'default',
          pickuptime: testOrders[index].pickuptime ?? 'default',
          ordernumber: testOrders[index].ordernumber ?? '1',
          gradientColor: testOrders[index].gradientColor ?? GradientColor.fire,
        );

        return Container(
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
        );
      });
}
