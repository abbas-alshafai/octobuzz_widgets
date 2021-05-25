import '../themes/measures.dart';
import 'package:flutter/material.dart';

class XContainerPadding {
  static EdgeInsetsGeometry build(){
    return EdgeInsets.symmetric(
      vertical: containerVerticalPadding,
      horizontal: containerHorizontalPadding);
  }
}
