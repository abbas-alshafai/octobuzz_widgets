import 'package:buzz_utils/buzz_utils.dart';
import 'package:flutter/material.dart';

class Utils{

  static Widget shrinkIfEmpty({
    final Widget? primaryWidget,
    final String? text,
    final Widget? textWidget,
    final Widget? emptyTextWidget
  }){
    return primaryWidget ?? (
        StringUtils.instance.isBlank(text)
            ? (emptyTextWidget ?? SizedBox.shrink())
            : textWidget ?? (StringUtils.instance.isBlank(text)
            ? SizedBox.shrink()
            : Text(text!))
    );
  }

}
