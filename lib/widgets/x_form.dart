import 'package:engine_widgets/widgets/eng_form.dart';
import '../utils/widgets_utils.dart';
import 'package:flutter/material.dart';

class XForm extends EngForm {

  XForm(Key? key, {
    List<Widget>? children,
    bool addVerticalSpace = true,
    Widget? child,
  })
    : super( key,
      child: child ?? Column(
        children: addVerticalSpace
            ?  WidgetsUtils.instance.getSpacedList(widgets: children ?? [])
            : children,
      )
    );
}
