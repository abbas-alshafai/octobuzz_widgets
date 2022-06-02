import 'package:flutter/material.dart';

class XUnderlinedButton extends StatelessWidget {

  final GestureTapCallback onPressed;
  final Color? color;
  final String text;

  const XUnderlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(Theme.of(context).accentTextTheme.bodyText2 != null);
    return GestureDetector(
      onTap: onPressed,
      child: Text( text,
        style: Theme.of(context).accentTextTheme.bodyText2!
            .copyWith(
              decoration: TextDecoration.underline,
              color: color ?? Theme.of(context).primaryColor
            ),
      ),
    );
  }
}
