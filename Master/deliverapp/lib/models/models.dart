//Auftrags Klasse mit  lieferant, restaurant, auftragsnummer, pickupTime, targetLocation, pickupLocation -> alles als String

import 'package:flutter/material.dart';

class Order {
  List<Color> gradientColor;
  String ordernumber;
  String pickuptime;
  String deliveryman;
  String targetLocation;
  String pickupLocation;

  Order({
    this.gradientColor,
    this.ordernumber,
    this.pickuptime,
    this.deliveryman,
    this.pickupLocation,
    this.targetLocation,
  });
}
