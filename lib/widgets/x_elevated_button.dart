import 'package:buzz_utils/buzz_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';


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

    TextStyle textStyle = textColor != null
        ? Theme.of(context).textTheme.button!.copyWith( color: textColor )
        : TextStyle().copyWith(color: Theme.of(context).colorScheme.onPrimary); // TODO reverse to: Theme.of(context).textTheme.button!;


    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Utils.shrinkIfEmpty(
        primaryWidget: child,
        text: text,
        textWidget: Text(text ?? StringUtils.empty,
            style: textStyle
        )
      ),
    );
  }
}
