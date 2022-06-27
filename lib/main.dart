import 'package:flutter/material.dart';
import 'package:test_1/textfield.dart';
import 'package:test_1/listview.dart';
import 'package:test_1/expanded.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Screen')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(
                child: Text(
                  'TextField',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  _toTextField(context);
                },
              ),
              ElevatedButton(
                child: Text(
                  'ListView',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  _toListView(context);
                },
              ),
              ElevatedButton(
                child: Text(
                  'Expanded',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  _toExpanded(context);
                },
              ),
            ],
          ),
        ));
  }

  void _toTextField(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen()));
  }

  void _toListView(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ListViewScreen()));
  }

  void _toExpanded(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ExpandedScreen()));
  }
}
