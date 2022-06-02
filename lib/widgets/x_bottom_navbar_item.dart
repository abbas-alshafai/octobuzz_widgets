import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XBottomNavBarItem extends BottomNavigationBarItem{

  XBottomNavBarItem({
    Color? color,
    Color? backgroundColor,
    Widget? icon,
    IconData? iconData,
    Widget? title,
    String? titleText,
    Widget? activeIcon,
    EdgeInsetsGeometry? padding,
  }) : super(
    icon: icon ?? Icon(
      iconData,
      color: color ?? ThemeFactory.instance.getTheme().themeData.primaryColor,
    ),
    backgroundColor: backgroundColor,
    activeIcon: activeIcon,
    label: titleText,
  );
}
