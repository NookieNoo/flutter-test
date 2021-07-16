import 'package:flutter/material.dart';

void main() => runApp(MyCounterApp());

class MyCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('CounterApp',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Tap "+" decrement',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
              CounterWidget(),
              Container(
                child: Text(
                  'Tap "-" increment',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue[100],
      ),
      margin: EdgeInsets.only(left: 140, right: 140, top: 5, bottom: 5),
      child: Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    _count -= 1;
                  });
                }),
            Text('${(_count)}',
                style: TextStyle(
                  fontSize: 30,
                )),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                }),
          ]),
    );
  }
}
