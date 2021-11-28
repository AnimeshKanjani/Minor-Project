import 'package:flutter/material.dart';

class AnalysePage extends StatefulWidget {
  @override
  _AnalysePageState createState() => _AnalysePageState();
}

class _AnalysePageState extends State<AnalysePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white54,
        child: Center(
          child: Text("Analyse page",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
