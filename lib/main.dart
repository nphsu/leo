import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List<String> _products = ['Food tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Advanced Food');
                });
              },
              child: Text('add product'),
            ),
          ),
          Column(
            children: _products
                .map(
                  (element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/2419.JPG'),
                            Text("Food paradaice")
                          ],
                        ),
                      ),
                )
                .toList(),
          ),
        ]),
      ),
    );
  }
}
