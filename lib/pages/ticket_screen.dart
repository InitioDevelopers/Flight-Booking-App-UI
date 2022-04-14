import 'package:flutter/material.dart';

class TicketScreen extends StatefulWidget {

  String? dataModel;

  TicketScreen({this.dataModel});

  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
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
