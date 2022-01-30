import 'package:flutter/cupertino.dart';

// class SizeUtils extends StatelessWidget{
//
//   // Screen Breakpoints
//   static const int xsBreakPoint = 359;
//   static const int smBreakPoint = 599;
//   static const int mdBreakPoint = 1439;
//   static const int lgBreakPoint = 1919;
//   static const int extraLarge = 1919;
//
//   final double maxWidth;
//   final XSizes size;
//
//   const SizeUtils({Key? key,
//     required this.maxWidth,
//     required this.size
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if(maxWidth > lgBreakPoint && size.xl != null)
//       return size.xl;
//
//     if(maxWidth > mdBreakPoint && size.lg != null)
//       return size.lg;
//
//     if(maxWidth > smBreakPoint && size.md != null)
//       return size.md;
//
//     if(maxWidth <= xsBreakPoint && size.xs != null)
//       return size.xs;
//
//     return size.sm;
//   }
// }

@Deprecated('Use [lib/utils/size_utils.dart] instead')
class SizeUtils{

  // Screen Breakpoints
  static const int xsBreakPoint = 359;
  static const int smBreakPoint = 599;
  // static const int mdBreakPoint = 1439;
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
}

const XSizes wideButtonMaxWidth = const XSizes(
  xs: 72,
  sm: 80,
  md: 88,
  lg: 96,
  xl: 102,
);


class XSizes<T>{
  final T? xs;
  final T sm;
  final T? md;
  final T? lg;
  final T? xl;

  const XSizes({this.xs, required this.sm, this.md, this.lg, this.xl});
}


class OpacityRatios{
  static const normal = 0.6;
}




// ui.widgets size
const double iconSize = 32;
const double btnIconSize = 32;
const double smallIconSize = 22;
const double avatarSize = 32;
const double bigBtnHeight = 60.0;
const double attachImageIconSize = 40;

// Spacing
const double vSpace = 20.0;
const double vDoubleSpace = 40.0;
const double hSpace = 8.0;
const double hDoubleSpace = 48.0;

const double componentPadding = 24;


// Max width
const double contentMaxWidth = 512;

const double containerVerticalPadding = 20.0;
const double containerHorizontalPadding = 20.0;
const double containerPadding = 10.0;
const double imagePadding = 8.0;

// form
const double formTopMargin = 50.0;
const double formSideMargin = 20.0;
const double formBottomMargin = 20.0;

// FONTs
const double errFontSize = 14.0;
const double commentFontSize = 12.0;
const double dashboardFontSize = 14.0;
const double bigBtnFontSize = 18.0;

// icons
const double dashboardIconSize = 36.0;
const double bigIconSize = 128.0;

// outline
const double outlineInputWidth = 0.5;


// App Bar
const double appBarElevation = 0.0;
const double appBarTitleSpacing = 0.0;




