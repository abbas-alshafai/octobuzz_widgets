import 'package:flutter/material.dart';

class XRow extends StatelessWidget {
  final Widget? bottomPreWidget;
  final Widget? bottomPostWidget;
  final Widget? bottomCenterWidget;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  XRow({
    this.bottomPreWidget,
    this.bottomPostWidget,
    this.bottomCenterWidget,
    this.padding,
    this.margin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (padding != null || margin != null)
      return Container(
        padding: padding,
        margin: margin,
        child: _getRow(),
      );

    return _getRow();
  }

  Widget _getRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        bottomPreWidget ?? const SizedBox.shrink(),
        const Spacer(),
        bottomCenterWidget ?? const SizedBox.shrink(),
        const Spacer(),
        bottomPostWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}
