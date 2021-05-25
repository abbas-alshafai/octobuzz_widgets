import 'package:flutter/material.dart';

class XDivider extends StatelessWidget {

  final EdgeInsetsGeometry? padding;

  const XDivider({Key? key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding  ?? const EdgeInsets.all(0),
      child: Divider(),
    );
  }
}
