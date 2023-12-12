import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton( //wrap with builder 한번더 심어주기
              child: Text('Show SnackBar'),
              onPressed: () {
                const snackBar = SnackBar(
                    content: Text('this is SnackBar'),
                    duration: Duration(seconds: 2));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ),
      ),
    );
  }
}
