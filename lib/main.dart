import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Building list view',
          ),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: EdgeInsets.all(8.0),
    // shrinkWrap: true,
    // scrollDirection: Axis.horizontal,
    // itemExtent: 300,
    // reverse: true,
    children: <Widget>[
      ListTile(
        title: Text('Sun'),
        subtitle: Text('Today Clear'),
        leading: Icon(Icons.wb_sunny),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Clowdy'),
        subtitle: Text('Today Clowdy'),
        leading: Icon(Icons.wb_cloudy),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Snow'),
        subtitle: Text('Today Snow'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}
