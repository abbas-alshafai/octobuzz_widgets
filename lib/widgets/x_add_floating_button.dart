
import '../constants/x_icons.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

import 'x_floating_button.dart';

class XAddFloatingButton extends XFloatingButton {

  XAddFloatingButton(onPressed) :
      super(
        onPressed: onPressed,
        child: Icon(
          XIcons.add,
          color: ThemeFactory.instance.getTheme().themeData.backgroundColor,
          size: 32,
        ),
      );
}
