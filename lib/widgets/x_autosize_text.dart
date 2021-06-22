import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class XAutoSizeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;

  const XAutoSizeText(
    this.text, {
    Key? key,
    this.style,
    this.color,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style ??
          TextStyle().copyWith(
            color: color,
            fontSize: fontSize,
          ),
    );
  }
}
