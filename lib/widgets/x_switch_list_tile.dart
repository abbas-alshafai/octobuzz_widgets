import 'package:flutter/material.dart';
import '../utils/utils.dart';


class XSwitchListTile extends StatelessWidget {
  
  final String? titleText;
  final String? subTitleText;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final ImageProvider? activeThumbImage;
  final ImageProvider? inactiveThumbImage;
  final Widget? title;
  final Widget? subtitle;
  final bool isThreeLine;
  final bool dense;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? secondary;
  final bool selected;
  final bool autofocus;
  final bool value;
  final ListTileControlAffinity controlAffinity;


  const XSwitchListTile({
    Key? key,
    required this.value,
    this.onChanged,
    this.titleText,
    this.subTitleText,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.inactiveThumbImage,
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense = false, // TODO
    this.contentPadding,
    this.secondary,
    this.selected = false,
    this.autofocus = false,
    this.controlAffinity = ListTileControlAffinity.platform
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      key: key,
      value: value,
      onChanged: onChanged,
      title: Utils.shrinkIfEmpty(
        primaryWidget: title,
        text: titleText
      ),
      subtitle: Utils.shrinkIfEmpty(
          primaryWidget: subtitle,
          text: subTitleText
      ),
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      inactiveThumbImage: inactiveThumbImage,
      isThreeLine: isThreeLine,
      dense: dense,
      contentPadding: contentPadding,
      secondary: secondary,
      selected: selected,
      autofocus: autofocus,
      controlAffinity: controlAffinity,
    );
  }
}
