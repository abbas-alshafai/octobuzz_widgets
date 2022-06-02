import '../utils/utils.dart';

import 'package:flutter/material.dart';

class XRadioListTile<T> extends StatelessWidget {

  final Widget? title;
  final Widget? subtitle;
  final String? titleText;
  final String? subtitleText;
  final ValueChanged? onChanged;
  final T value;
  final T groupValue;
  final Widget? secondary;
  final bool selected;
  final Color? activeColor;


  const XRadioListTile({
    Key? key,
    this.title,
    this.subtitle,
    this.titleText,
    this.subtitleText,
    this.onChanged,
    required this.value,
    required this.groupValue,
    this.secondary,
    this.selected = false,
    this.activeColor
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Utils.shrinkIfEmpty(
        primaryWidget: title,
        text: titleText,
      ),
      subtitle: Utils.shrinkIfEmpty(
        primaryWidget: subtitle,
        text: subtitleText,
      ),
      onChanged: onChanged,
      value: value,
      groupValue: groupValue,
      secondary: secondary,
      selected: selected,
      activeColor: activeColor,
    );
  }
}
