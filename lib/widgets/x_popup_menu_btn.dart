import 'package:engine_widgets/models/eng_menu_item.dart';
import 'package:engine_widgets/widgets/eng_popup_menu_btn.dart';
import 'package:flutter/material.dart';

class XPopupMenuButton extends StatelessWidget {

  final int skipCount;
  final List<EngMenuItem> menuItems;

  XPopupMenuButton({Key? key,
    this.skipCount = 0,
    required this.menuItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EngPopupMenuButton(
      skipCount: skipCount,
      menuItems: menuItems,
    );
  }
}
