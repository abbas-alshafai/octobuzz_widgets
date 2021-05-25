import 'package:engine_widgets/widgets/eng_row.dart';
import 'package:flutter/material.dart';

class XRow extends EngRow{
  XRow({
    Widget? bottomPreWidget,
    Widget? bottomPostWidget,
    Widget? bottomCenterWidget,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
  }) : super(
      bottomPreWidget: bottomPreWidget,
      bottomPostWidget: bottomPostWidget,
      bottomCenterWidget: bottomCenterWidget,
      padding: padding,
      margin: margin,
  );
}
