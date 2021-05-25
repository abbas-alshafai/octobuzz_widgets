import 'package:engine_widgets/widgets/eng_bottom_navbar_item.dart';
import '../themes/theme_factory.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

class XBottomNavBarItem extends EngBottomNavBarItem{

  XBottomNavBarItem({
    Color? color,
    Color? backgroundColor,
    Widget? icon,
    IconData? iconData,
    XText? title,
    String? titleText,
    EdgeInsetsGeometry? padding,
  }) : super(
    // backgroundColor: backgroundColor ??
    //     ThemeFactory.instance.getTheme().themeData.backgroundColor,
    icon: icon ?? Icon(
      iconData,
      color: color ?? ThemeFactory.instance.getTheme().themeData.primaryColor,
    ),
    titleText: titleText,
  );
}
