import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors_utils.dart';

class MyFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isEnable;
  final bool isRequire;
  final bool isReadOnly;
  final FormFieldValidator? validator;
  final ValueChanged? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final int maxLines;
  final int? maxLength;
  final GestureTapCallback? onTap;
  final Widget? prefixIcon;
  final Function(String)? onSubmited;

  const MyFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isEnable = true,
    this.isRequire = false,
    this.isReadOnly = false,
    this.textInputAction,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.maxLength,
    this.validator,
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.onSubmited,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: isEnable,
      readOnly: isReadOnly,
      style: TextStyle(
          fontSize: 14.0,
          color: isRequire
              ? primaryTextColor
              : Theme.of(context).textTheme.bodyText1!.color),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      textCapitalization: TextCapitalization.sentences,
      maxLines: maxLines,
      maxLength: maxLength,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onSubmited,
    );
  }
}
