import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FirstHome(), routes: {
    '/first': (context) => FirstHome(),
    '/second': (context) => SecondHome(),
  }));
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            User user = User('Ilya', 20);
            Navigator.pushNamed(context, '/second', arguments: user);
          },
          child: Text('Second Home'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          User user = User('Konstantin', 34);
          Navigator.pushNamed(context, '/second', arguments: user);
        },
        child: Text('Move to Page 2'),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  late User user;

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;
    user = settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.user.name} - ${this.user.age}'),
        // title: Text('test'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User(this.name, this.age);
}
