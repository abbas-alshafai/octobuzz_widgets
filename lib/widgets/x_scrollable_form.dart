import 'package:engine_widgets/widgets/eng_scrollable_form.dart';
import '../widgets/x_row.dart';
import 'package:flutter/material.dart';

class XScrollableForm extends EngScrollableForm {
  XScrollableForm({
    Form? form,
    EdgeInsetsGeometry? padding,
    Widget? bottomActionBar,
    Widget? bottomPreWidget,
    Widget? bottomPostWidget,
    Widget? bottomCenterWidget,
    double maxWidth = 500,
  })
  : super(
    form: form,
    padding: padding,
    maxWidth: maxWidth,
    bottomActionBar: Padding(
      padding: const EdgeInsets.all(8.0),
      child: bottomActionBar ?? XRow(
        bottomPreWidget: bottomPreWidget,
        bottomCenterWidget: bottomCenterWidget,
        bottomPostWidget: bottomPostWidget,
      ),
    ),
  );
}
