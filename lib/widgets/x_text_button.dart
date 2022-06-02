import 'package:flutter/material.dart';



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
      child: child ?? Text(text!,
        style: Theme.of(context).textTheme.button?.copyWith(color: textColor),
      ),
      style: style,
      onPressed: onPressed,
    );
  }

}
