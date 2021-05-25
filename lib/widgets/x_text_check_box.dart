import '../utils/utils.dart';

import '../widgets/x_check_box.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

class XTextCheckbox extends StatelessWidget {
  const XTextCheckbox({
    Key? key,
    this.text,
    this.space,
    this.checkbox,
    this.checkboxKey,
    this.onChanged,
    this.hoverColor,
    this.focusColor,
    required this.value,
    this.title,
    this.textColor
  })
      : super(key: key);


  final String? text;
  final double? space;
  final XCheckbox? checkbox;
  final Key? checkboxKey;
  final ValueChanged? onChanged;
  final Color? hoverColor;
  final Color? focusColor;
  final bool value;
  final Widget? title;
  final Color? textColor;


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      key: checkboxKey,
      onChanged: onChanged ?? (val) {},
      title: Utils.shrinkIfEmpty(
        primaryWidget: title,
        text: text,
      )
    );
  }
}

