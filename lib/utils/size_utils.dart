
import 'package:flutter/material.dart';
import 'package:octobuzz_widgets/models/x_size.dart';
import 'package:octobuzz_widgets/themes/measures.dart';

class XSizeUtils{

  // Screen Breakpoints
  static const int xsBreakPoint = 359;
  static const int smBreakPoint = 599;
  static const int mdBreakPoint = 999;
  static const int lgBreakPoint = 1919;
  static const int extraLarge = 1919;

  static T resize<T>({
    required final double maxWidth,
    required final XSizes size,
  }){

    if(maxWidth > lgBreakPoint && size.xl != null)
      return size.xl;

    if(maxWidth > mdBreakPoint && size.lg != null)
      return size.lg;

    if(maxWidth > smBreakPoint && size.md != null)
      return size.md;

    if(maxWidth <= xsBreakPoint && size.xs != null)
      return size.xs;

    return size.sm;
  }


  static XScreen of(BuildContext context){
    return XScreen(size: MediaQuery.of(context).size);
  }


}
