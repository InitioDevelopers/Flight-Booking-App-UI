import 'package:flutter/material.dart';

class MyTextSmall extends StatefulWidget {
  final String? label;
  final String? value;
  final Color? color;
  final GestureTapCallback? onTap;

  const MyTextSmall({
    Key? key,
    this.label,
    this.value,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  _MyTextSmallState createState() => _MyTextSmallState();
}

class _MyTextSmallState extends State<MyTextSmall> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Text(widget.label!,style: TextStyle(color: widget.color, fontWeight: FontWeight.w500),);
  }
}
