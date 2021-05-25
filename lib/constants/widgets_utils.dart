import 'package:flutter/material.dart';
import '../themes/measures.dart';

class WidgetsUtils{
  WidgetsUtils._();
  static final instance = WidgetsUtils._();


  getSpacedList({required final List<Widget> widgets, final double? height}) {

    if(widgets == null || widgets.length < 2)
      return widgets;

    List<Widget> children = [];
    children.add(widgets.elementAt(0));

    for(int i = 1 ; i < widgets.length; i++){
      children.add(SizedBox(height: height ?? vSpace,));
      children.add(widgets.elementAt(i));
    }

    return children;
  }
}


const String en = "en";
const String ar = "ar";
const String es = "es";
const String fr = "fr";
