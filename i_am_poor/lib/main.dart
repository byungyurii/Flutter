import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://patriciangelss.com/wp-content/uploads/2020/09/BE061F98-B45A-4970-A403-51D7349EE3F0.jpeg'),
          ),
        ),
      ),
    ),
  );
}