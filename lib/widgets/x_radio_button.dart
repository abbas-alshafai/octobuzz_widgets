import '../utils/utils.dart';
import 'package:flutter/material.dart';

class XRadioButton<T> extends StatelessWidget {

  const XRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.title,
    this.subTitle,
    this.titleWidget
  }) : super(key: key);


  final T value;
  final T groupValue;
  final ValueChanged onChanged;
  final Widget? titleWidget;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      title: Utils.shrinkIfEmpty(
        primaryWidget: titleWidget,
        text: title,
      )
    );
  }
}
