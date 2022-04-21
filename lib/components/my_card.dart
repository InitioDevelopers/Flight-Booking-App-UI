import 'package:flutter/material.dart';

import '../utils/colors_utils.dart';

class MyCard extends StatelessWidget {
  final Color? color;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final double? radius;
  final Widget? child;

  const MyCard({
    Key? key,
    this.color = whiteColor,
    this.elevation = 3.0,
    this.margin = EdgeInsets.zero,
    this.radius = 0.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      margin: margin,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: child,
    );
  }
}
