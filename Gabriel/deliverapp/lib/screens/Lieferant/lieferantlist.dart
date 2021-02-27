import 'package:flutter/material.dart';

//stellt die aktuellen aufträge für das jeweilige restaurant dar -> ListViewBuilder, fast gleich wie lieferantlist

class LieferantList extends StatefulWidget {
  @override
  _LieferantListState createState() => _LieferantListState();
}

class _LieferantListState extends State<LieferantList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Deliverer'),
    );
  }
}
