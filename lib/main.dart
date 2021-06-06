import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DashboarRRRd'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/bytebank_logo.png'),
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Icon(Icons.people),
                  Text('Contacts'),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
