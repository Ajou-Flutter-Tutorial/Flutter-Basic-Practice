import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ListTile(
              title: Text('Flutter tutorial'),
              subtitle: Text('lecture 1'),
              leading: Icon(Icons.movie),
            ),
            ListTile(
              title: Text('Flutter tutorial'),
              subtitle: Text('lecture 2'),
              leading: Icon(Icons.movie),
            ),
            ListTile(
              title: Text('Flutter tutorial'),
              subtitle: Text('lecture 3'),
              leading: Icon(Icons.movie),
            ),
          ],
        ));
  }
}
