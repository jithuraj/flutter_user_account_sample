import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String? name;
  HomeScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi $name, Welcome home.'),
        ),
      ),
    );
  }
}
