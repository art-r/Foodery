import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter/material.dart';
import 'city.dart';
import 'tasks.dart';

final double elevation = 0.0;

/// Whether the labels are shown for the selected [BottomNavigationBarItem].
final bool showSelectedLabels = true;

/// Whether the labels are shown for the selected [BottomNavigationBarItem].
final bool showUnselectedLabels = true;

/// Default is [SnakeShape.circle]
final SnakeShape snakeShape = SnakeShape.circle;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    City(),
    PlaceholderWidget(Colors.grey),
    PlaceholderWidget(Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hackathon app'),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: SnakeNavigationBar.gradient(
        snakeShape: snakeShape,
        elevation: 3.0,

        //padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),

        ///configuration for SnakeNavigationBar.color

        ///configuration for SnakeNavigationBar.gradient
        snakeViewGradient: LinearGradient(
            begin: Alignment.center,
            colors: [Colors.blueGrey[700], Colors.blueGrey[900]]),
        selectedItemGradient: LinearGradient(
            begin: Alignment.center, colors: [Colors.white, Colors.white]),
        unselectedItemGradient: LinearGradient(
            begin: Alignment.center, colors: [Colors.black, Colors.black]),

        showUnselectedLabels: false,
        showSelectedLabels: false,

        onTap: onTabTabbed,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: 'route'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'schedule'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.plus_one,
                color: Colors.white,
              ),
              label: 'add'),
        ],
      ),
    );
  }

  void onTabTabbed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
