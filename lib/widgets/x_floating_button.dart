import 'package:engine_widgets/widgets/eng_floating_button.dart';

import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XFloatingButton extends EngFloatingButton {

  final Widget? child;
  final Color? backgroundColor;
  final double? elevation;


  XFloatingButton({
    onPressed,
    Key? key,
    this.backgroundColor,
    this.child,
    this.elevation
  })
  : super(
    elevation: elevation,
    onPressed: onPressed,
    child: child,
    backgroundColor: ThemeFactory.instance.getTheme().themeData.accentColor,
    key: key
  );


}
