import 'package:flutter/material.dart';
import 'package:flight_booking_ui/utils/colors_utils.dart';

class MyBoldText extends StatelessWidget {
  final String? label;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;

  const MyBoldText({
    Key? key,
    required this.label,
    this.color = primaryTextColor,
    this.fontSize = 16.0,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label ?? "",
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.normal,),
    );
  }
}
