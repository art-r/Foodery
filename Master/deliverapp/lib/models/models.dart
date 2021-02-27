//Auftrags Klasse mit  lieferant, restaurant, auftragsnummer, pickupTime, targetLocation, pickupLocation -> alles als String

class Order {
  String ordernumber;
  String pickuptime;
  String deliveryman;
  String targetLocation;
  String pickupLocation;

  Order({this.ordernumber, this.pickuptime, this.deliveryman, this.pickupLocation, this.targetLocation});
}
