import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('flash card'),
    ),
    body: FlashCardPage(),
  )));
}

class FlashCardPage extends StatefulWidget {
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCardPage> {
  int i = 1;
  List<String> dicE = ['apple', 'banana', 'kiwi', 'strawberry'];
  List<String> dicK = ['사과', '바나나', '키위', '딸기'];
  List<String> texts = ['apple', 'banana', 'kiwi', 'strawberry'];

/*
  void chg_card(n)
  {
    return setState(() {
      i = (i + 1) % 2;
      if(i == 1)
      {
        Text('$i');
      }
      else {
        Text('$i');
      }
    });
  }
*/
  Padding mk_card(int n) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        height: 100,
        child: Text(
          texts[n],
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        color: Colors.black38,
        onPressed: () {
          setState(() {
            texts[n] = dicK[n];
            print(texts[n]);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                mk_card(0),
                mk_card(1),
                mk_card(2),
                mk_card(3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
