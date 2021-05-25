import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

Decoration containerGradient = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  gradient: LinearGradient(
    colors: [
      ThemeFactory.instance.getTheme().gradientOne,
      ThemeFactory.instance.getTheme().gradientTwo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);
