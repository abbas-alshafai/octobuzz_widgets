import '../utils/widgets_utils.dart';
import 'package:flutter/material.dart';

class XForm extends Form {
  XForm(
    Key? key, {
    List<Widget>? children,
    bool addVerticalSpace = true,
    Widget? child,
  }) : super(
          key: key,
          child: child ??
              Column(
                children: addVerticalSpace
                    ? WidgetsUtils.instance
                        .getSpacedList(widgets: children ?? [])
                    : children,
              ),
        );
}
