import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GestureDetector Widget Example')),
        body: GestureDetectorExample(),
      ),
    );
  }
}

class GestureDetectorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('Tapped!');
        },
        onLongPress: () {
          print('Long Pressed!');
        },
        onDoubleTap: () {
          print('Double Tapped!');
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blueAccent,
          child: Center(
            child: Text('Tap or Long Press',
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
