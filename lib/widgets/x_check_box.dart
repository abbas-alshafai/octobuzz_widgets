import 'package:engine_widgets/widgets/eng_check_box.dart';
import 'package:flutter/material.dart';

class XCheckbox extends EngCheckbox {

  final ValueChanged<bool?>? onChanged;
  final Color? hoverColor;
  final Color? focusColor;
  final bool value;

  const XCheckbox({
    Key? key,
    required this.onChanged,
    this.hoverColor,
    this.focusColor,
    required this.value
  }) : super(
    key: key,
    value: value,
    hoverColor: hoverColor,
    focusColor: focusColor,
    onChanged: onChanged,
  );

}
