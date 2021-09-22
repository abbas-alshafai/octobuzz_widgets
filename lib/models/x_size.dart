import 'package:flutter/material.dart';

class XScreen {
  final Size size;

  const XScreen({required this.size});

  double height({
    final double dividedBy = 1,
    final double margin = 0,
  }) =>
      (size.height / dividedBy) - margin;


  double width({
    final double dividedBy = 1,
    final double margin = 0,
  }) =>
      (size.width / dividedBy) - margin;



}
