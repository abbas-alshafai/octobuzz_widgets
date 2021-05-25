import 'package:flutter/material.dart';

class XContainer extends StatelessWidget {

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final double? height;
  final double? width;
  final Color? stripeColor;
  final bool showStripe;
  final bool noPadding;
  final bool noMargin;
  final bool roundCorners;


  const XContainer({
    Key? key,
    this.child,
    this.padding,
    this.color,
    this.height,
    this.width,
    this.stripeColor,
    this.showStripe = false,
    this.margin,
    this.noPadding = false,
    this.noMargin = true,
    this.roundCorners = true,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(showStripe)
      return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(roundCorners ? 2 : 0),  // TODO
            color: color ?? Colors.white, // TODO
          ),
          // padding: padding ?? EdgeInsets.all(noPadding ? 0 : 8),
          // margin: noMargin ? null : ( margin ?? EdgeInsets.all(16) ),
          child: Row(
            children: [
              Container( height: 48, width: 4,
                color: stripeColor ?? Theme.of(context).primaryColor,
              ),
              child == null ? SizedBox.shrink() : SizedBox(width: 4,),
              child ?? SizedBox.shrink()
            ],
          )
      );

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(roundCorners ? 2 : 0),  // TODO
        color: color ?? Colors.white, // TODO
      ),
      padding: padding ?? EdgeInsets.all(noPadding ? 0 : 8),
      margin: noMargin ? null : ( margin ?? EdgeInsets.all(16) ),
      child: child
    );
  }
}
