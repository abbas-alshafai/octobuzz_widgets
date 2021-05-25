import 'package:engine_widgets/models/eng_menu_item.dart';
import '../utils/utils.dart';
import 'package:flutter/material.dart';

class XMenuItem extends EngMenuItem {

  XMenuItem({
    Widget? child,
    Widget? leading,
    String? title,
    required VoidCallback onPressed,
  })
  : super (
    child: Utils.shrinkIfEmpty(
      primaryWidget: child,
      text: title,
    ),
    onPressed: onPressed,
  );
}
