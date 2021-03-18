import 'package:flutter/material.dart';

// The main function is the starting  for all our flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // scaffold background color chg
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am Rich'),//widget
          backgroundColor: Colors.blueGrey[900],//Color object
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),//image property
          ),
        )//image widget,
      ),
    ),
  );
}
