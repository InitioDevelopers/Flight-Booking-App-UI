import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double height;

  const MyDivider({
    Key? key,
    this.height = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).dividerColor,
      height: height,
    );
  }
}
