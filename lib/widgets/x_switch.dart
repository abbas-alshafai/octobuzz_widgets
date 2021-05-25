import 'package:engine_widgets/widgets/eng_switch.dart';
import 'package:flutter/material.dart';

class XSwitch extends StatelessWidget {

  final bool value;
  final ValueChanged? onChanged;
  final Color? activeColor;
  final Color? focusColor;

  const XSwitch({Key? key, required this.value,
    this.onChanged,
    this.activeColor,
    this.focusColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EngSwitch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      focusColor: focusColor,
    );
  }
}
