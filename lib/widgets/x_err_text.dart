import 'package:flutter/material.dart';

import '../themes/measures.dart';
import '../themes/theme_factory.dart';

class XErrText extends Text {
  XErrText(String text)
      : super(
          text,
          style: TextStyle().copyWith(
            fontSize: errFontSize,
            color: ThemeFactory.instance.getTheme().themeData.errorColor,
          ),
        );
}
