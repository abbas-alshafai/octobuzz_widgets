import 'package:buzz_utils/buzz_utils.dart';

import '../utils/utils.dart';
import '../widgets/x_text_button.dart';
import '../widgets/x_row.dart';
import 'package:flutter/material.dart';


class XDialog extends StatelessWidget {

  final Widget? child;
  final String? text;
  final Widget? textWidget;
  final Color? backgroundColor;
  final double? elevation;
  final Clip? clipBehavior;
  final Curve? insetAnimationCurve;
  final Duration? insetAnimationDuration;
  final EdgeInsets? insetPadding;
  final ShapeBorder? shape;
  final Widget? actionBar;
  final double? height;
  final double? width;
  final double? textPadding;
  final Widget? bottomPostWidget;
  final Widget? bottomPreWidget;
  final Widget? bottomCenterWidget;
  final String? singleActionText;
  final VoidCallback? singleActionOnPressed;

  const XDialog({
    Key? key,
    this.textWidget,
    this.backgroundColor,
    this.elevation,
    this.clipBehavior,
    this.insetAnimationCurve,
    this.insetAnimationDuration,
    this.insetPadding,
    this.shape,
    this.child,
    this.text,
    this.actionBar,
    this.height,
    this.width,
    this.textPadding,
    this.bottomPostWidget ,
    this.bottomPreWidget ,
    this.bottomCenterWidget,
    this.singleActionText,
    this.singleActionOnPressed ,
  }) : super(key: key);


  XDialog.show(BuildContext context, {
    this.textWidget,
    this.singleActionText,
    this.singleActionOnPressed,
    String? msg,
    this.child,
    this.backgroundColor,
    this.elevation,
    this.clipBehavior,
    this.insetAnimationCurve, this.insetAnimationDuration, this.insetPadding,
    this.shape, this.text, this.actionBar, this.height, this.width, this.textPadding,
    this.bottomPostWidget,
    this.bottomPreWidget,
    this.bottomCenterWidget,
  }) {
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            XDialog(
              child: child ?? Utils.shrinkIfEmpty(
                  text: msg,
                  primaryWidget: textWidget
              ),
              backgroundColor: backgroundColor,
              elevation: elevation,
              clipBehavior: clipBehavior,
              insetAnimationCurve: insetAnimationCurve,
              insetAnimationDuration: insetAnimationDuration,
              insetPadding: insetPadding,
              shape: shape,
              actionBar: actionBar ?? Row(
                children: <Widget>[
                  Expanded(
                      child: XTextButton(
                        text: singleActionText ?? StringUtils.empty,
                        onPressed: singleActionOnPressed ?? () {
                          Navigator.of(context).pop();
                        },
                      )
                  ),
                ],
              ),
              bottomPostWidget: bottomPostWidget,
              bottomPreWidget: bottomPreWidget,
              bottomCenterWidget: bottomCenterWidget,
              height: height,
              width: width,
              textPadding: textPadding ,
            )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Dialog(
      shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      backgroundColor: backgroundColor,
      elevation: elevation,
      insetAnimationDuration: insetAnimationDuration ?? const Duration(milliseconds: 100),
      insetAnimationCurve: insetAnimationCurve ?? Curves.decelerate,
      insetPadding: insetPadding ?? EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      clipBehavior: clipBehavior ?? Clip.none,

      child: child ?? Container(
        height: height ?? 300.0, // TODO
        width: width ?? 300.0, // TODO
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(textPadding ?? 15.0),
              child: Utils.shrinkIfEmpty(
                primaryWidget: textWidget,
                text: text
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50.0)),
            Utils.shrinkIfEmpty(
              primaryWidget: actionBar,
              text: singleActionText,
              textWidget: Row(
                children: <Widget>[
                  Expanded(
                      child: XTextButton(
                        text: singleActionText ?? StringUtils.empty,
                        onPressed: singleActionOnPressed ?? (){},
                      )
                  ),
                ],
              ),
              emptyTextWidget: XRow(
                bottomPostWidget: bottomPostWidget,
                bottomPreWidget: bottomPreWidget,
                bottomCenterWidget: bottomCenterWidget,
              )
            ),

          ],
        ),
      ),
    );
  }
}
