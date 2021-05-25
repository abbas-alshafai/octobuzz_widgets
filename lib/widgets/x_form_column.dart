import '../constants/widgets_utils.dart';
import 'package:flutter/material.dart';

class XColumn extends StatelessWidget {

  final bool addVerticalSpace;
  final List<Widget> children;

  const XColumn({Key? key,
    this.addVerticalSpace = true,
    required this.children
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: addVerticalSpace
          ? WidgetsUtils.instance.getSpacedList(widgets: children)
          : children,
    );
  }
}
