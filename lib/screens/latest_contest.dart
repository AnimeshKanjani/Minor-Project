import 'package:flutter/material.dart';

class ContestPage extends StatefulWidget {
  @override
  _ContestPageState createState() => _ContestPageState();
}

class _ContestPageState extends State<ContestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white54,
        child: Center(
          child: Text("Contest page",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
