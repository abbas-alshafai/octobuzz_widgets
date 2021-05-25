import '../utils/utils.dart';

import 'package:flutter/material.dart';


class XCheckboxListTile extends StatelessWidget {

  final bool value;
  final ValueChanged<bool?>? onChanged;
  final Color? activeColor;
  final Color? checkColor;
  final Widget? title;
  final Widget? subtitle;
  final bool isThreeLine;
  final Widget? secondary;
  final bool selected;
  final String? titleText;
  final String? subtitleText;

  const XCheckboxListTile({
    Key? key,
    required this.value,
    this.onChanged,
    this.activeColor,
    this.checkColor,
    this.title,
    this.subtitle,
    this.secondary,
    this.selected = false,
    this.isThreeLine = false,
    this.titleText,
    this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkColor: checkColor,
      value: value,
      onChanged: onChanged,
      title: Utils.shrinkIfEmpty(
        primaryWidget: title,
        text: titleText,
      ),
      subtitle: Utils.shrinkIfEmpty(
        primaryWidget: subtitle,
        text: subtitleText,
      ),
      activeColor: activeColor,
      secondary: secondary,
      selected: selected,
      isThreeLine: isThreeLine,
    );
  }
}


