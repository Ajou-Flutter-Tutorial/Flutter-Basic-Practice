import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Radio Widget Example')),
        body: RadioExample(),
      ),
    );
  }
}

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String _selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            title: Text('Option 1'),
            value: 'Option 1',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: 'Option 2',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
