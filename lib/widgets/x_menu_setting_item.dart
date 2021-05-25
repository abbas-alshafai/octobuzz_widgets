import '../constants/x_icons.dart';
import '../widgets/x_menu_item.dart';
import 'package:flutter/material.dart';

class XMenuSettingItem extends XMenuItem {

  final String settingText;

  XMenuSettingItem({
    required this.settingText,
    required VoidCallback onPressed,
  })
  : super(
    title: settingText,
    leading: Icon(XIcons.edit),
    onPressed: onPressed,
  );
}
