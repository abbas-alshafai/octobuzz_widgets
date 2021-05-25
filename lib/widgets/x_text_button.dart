import 'package:engine_widgets/widgets/eng_elevated_button.dart';
import 'package:flutter/material.dart';

import 'x_text.dart';


class XTextButton extends StatelessWidget {

  final String? text;
  final Widget? child;
  final VoidCallback onPressed;
  final Color? textColor;
  final ButtonStyle? style;

  const XTextButton({Key? key, this.text, required this.onPressed, this.child,
    this.textColor, this.style})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(

      child: child ?? XText(text!,
        style: Theme.of(context).textTheme.button?.copyWith(color: textColor),
      ),
      style: style,
      onPressed: onPressed,
    );
  }

}
