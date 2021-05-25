import 'package:flutter/material.dart';

class XDrawerDivider extends Divider{
  XDrawerDivider({
    Color? color,
    double? thickness,
    double? height
  })
  : super (
    color: color ?? Colors.white,
    thickness: thickness,
    height: height,
  );
}
