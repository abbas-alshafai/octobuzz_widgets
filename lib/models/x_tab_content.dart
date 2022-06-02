import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon_data.dart';

class XTabContent {
  final String title;
  final IconData icon;
  final Color? color;
  final Widget contents;

  const XTabContent({
    required this.title,
    required this.icon,
    this.color,
    required this.contents,
  });
}
