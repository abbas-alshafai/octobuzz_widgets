import 'package:engine_widgets/widgets/eng_form.dart';
import '../constants/widgets_utils.dart';
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

// TODO remove
//  static _getSpacedList(List<Widget> l) {
//
//    if(l == null || l.length < 2)
//      return l;
//
//
//    List<Widget> children = [];
//    children.add(l.elementAt(0));
//
//    for(int i = 1 ; i < l.length; i++){
//      children.add(SizedBox(height: vSpace,));
//      children.add(l.elementAt(i));
//    }
//
//    return children;
//  }
}
