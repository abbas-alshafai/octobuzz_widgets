import 'package:engine_utils/utils/string_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

import 'x_text.dart';

class XElevatedButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Widget? child;
  final Color? color;
  final Color? highlightColor;
  final Color? disabledColor;
  final Color? textColor;
  final String? text;
  final double? elevation;
  final ButtonStyle? style;


  XElevatedButton({
    required this.onPressed,
    this.child,
    this.color,
    this.style,
    this.text,
    this.highlightColor,
    Key? key,
    this.disabledColor,
    this.textColor,
    this.elevation
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // assert(child != null || StringUtils.instance.isNotBlank(text));

    TextStyle textStyle = textColor != null
        ? Theme.of(context).textTheme.button!.copyWith( color: textColor )
        : Theme.of(context).textTheme.button!;


    return ElevatedButton(
      onPressed: onPressed,
      /*
      color: color ?? Theme.of(context).accentColor,
      highlightColor: highlightColor,
      disabledColor: disabledColor,
      elevation: elevation,
      style: ButtonStyle(
        backgroundColor:
      ),

       */

      style: style,
      child: Utils.shrinkIfEmpty(
        primaryWidget: child,
        text: text,
        textWidget: XText(text ?? StringUtils.empty,
            style: textStyle
        )
      ),
    );
  }
}
