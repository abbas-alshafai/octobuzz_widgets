import 'package:flutter/material.dart';
import '../../themes/measures.dart';

class XResponsiveLayout extends StatelessWidget {

  final Widget? xs;
  final Widget sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;

  const XResponsiveLayout({Key? key, this.xs,
    required this.sm,
    this.md,
    this.lg,
    this.xl
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions){
        return SizeUtils.resize<Widget>(
          maxWidth: dimensions.maxWidth,
          size: XSizes<Widget>(
            xs: xs,
            sm: sm,
            md: md,
            lg: lg,
            xl: xl,
          )
        );
      }
    );
  }
}
