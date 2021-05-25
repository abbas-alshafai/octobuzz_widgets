import '../themes/measures.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

import 'x_text.dart';

class XErrText extends XText {
  XErrText(String text)
      : super(
          text,
          size: errFontSize,
          color: ThemeFactory.instance.getTheme().themeData.errorColor,
        );
}
