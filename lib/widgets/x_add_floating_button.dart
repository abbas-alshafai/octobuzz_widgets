import '../constants/x_icons.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XAddFloatingButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const XAddFloatingButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(
        XIcons.add,
        color: ThemeFactory.instance.getTheme().themeData.backgroundColor,
        size: 32,
      ),
    );
  }
}
