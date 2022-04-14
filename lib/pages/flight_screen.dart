import 'package:flutter/material.dart';

class FlightScreen extends StatefulWidget {

  String? dataModel;

  FlightScreen({this.dataModel});

  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
        child: Center()
      ),
    );
  }
}
