import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TextField Widget Example')),
        body: TextFieldExample(),
      ),
    );
  }
}

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  String _inputText = '';

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter text'),
            onChanged: (text) {
              setState(() {
                _inputText = text;
              });
            },
          ),
          SizedBox(height: 20),
          Text('Entered Text: $_inputText'),
        ],
      ),
    );
  }
}
