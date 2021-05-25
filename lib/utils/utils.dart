import 'package:engine_utils/utils/string_utils.dart';
import 'package:engine_widgets/utils/eng_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_text.dart';

class Utils{

  static Widget shrinkIfEmpty({
    final Widget? primaryWidget,
    final String? text,
    final Widget? textWidget,
    final Widget? emptyTextWidget
  }){

    return EngUtils.shrinkIfEmpty(
      primaryWidget: primaryWidget,
      text: text,
      textWidget: textWidget ?? (StringUtils.instance.isBlank(text)
          ? SizedBox.shrink()
          : XText(text!)),
      emptyTextWidget: emptyTextWidget,
    );
  }

}
