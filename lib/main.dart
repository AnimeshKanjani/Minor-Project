import 'package:cfminor/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Success Graphify',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text("Success Graphify",
                      style: TextStyle(color: Colors.black))),
            ),
            body: HomePage()));
  }
}
