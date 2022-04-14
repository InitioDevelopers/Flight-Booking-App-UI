import 'package:flutter/material.dart';

import '../utils/colors_utils.dart';

class MyTextHeader extends StatelessWidget {
  final String label;
  final Color? color;

  const MyTextHeader({
    Key? key,
    required this.label,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
