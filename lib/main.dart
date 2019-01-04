import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Card(child: Column(children: <Widget>[
          Image.asset('assets/2419.JPG'),
          Text("Food paradaice")
        ],),),
      ),
    );
  }
}
