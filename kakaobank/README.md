# kakaobank

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##김동현 코드

import 'package:flutter/material.dart';
import 'package:voca/models/Vocas.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VocaScreen(),
    );
  }
}

class VocaScreen extends StatefulWidget {
  @override
  _VocaScreenState createState() => _VocaScreenState();
}

class _VocaScreenState extends State<VocaScreen> {

  Vocas study = Vocas();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Voca'),
      ),
      body: ListView.builder(
        itemCount: study.items.length,
          itemBuilder: (_, i) => Column(
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.lime,
                  width: double.infinity,
                  height: 140,
                  child: Text(study.items[i].e_k == false ? study.items[i].english : study.items[i].korean,
                  style: TextStyle(fontSize: 30),),
                ),

                onTap: () {
                  setState(() {
                    study.items[i].e_k = !study.items[i].e_k;
                  });
                },
              ),
              SizedBox(height: 10,),
            ],
          ))
    );
  }
}
