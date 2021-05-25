
import '../constants/x_icons.dart';
import 'package:flutter/material.dart';

import 'x_floating_button.dart';

class XFloatingDoneButton extends XFloatingButton {

  XFloatingDoneButton({required VoidCallback onPressed}) :
    super(
      onPressed: onPressed,
      // backgroundColor: Colors.pinkAccent, // TODO move to theme
      child: Icon(
        XIcons.done,
        color: Colors.white, // TODO
        size: 32,
      ),
    );
}

