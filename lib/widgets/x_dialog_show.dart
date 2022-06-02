import 'package:buzz_utils/buzz_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widgets/x_text_button.dart';

import 'x_dialog.dart';
// import 'x_flat_button.dart';

/*
class XShowDialog{

  XShowDialog({
    this.centerText,
    this.textWidget,
    this.text,
    this.bottomCenterWidget?,
    this.onPressed});

  final Widget? textWidget;
  final String? text;
  final Widget? bottomCenterWidget;
  final String? centerText;
  final VoidCallback? onPressed;


  show(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) =>
        XDialog(
          text: text,
          textWidget: textWidget,
          bottomCenterWidget: Utils.shrinkIfEmpty(
            primaryWidget: bottomCenterWidget,
            text: centerText,
            altWidget: XFlatButton(
              text: centerText!,
              onPressed: onPressed ?? (){
                Navigator.of(context).pop();
              }
          )
          )

        )
    );
  }



  static Function display = (BuildContext context, {
    Widget? child,
    Color? backgroundColor,
    double? elevation,
    Clip? clipBehavior,
    Curve? insetAnimationCurve,
    Duration? insetAnimationDuration,
    EdgeInsets? insetPadding,
    ShapeBorder? shape,
    String text,
    Widget? textWidget,
    Widget? actionBar,
    Widget singleActionWidget,
    String? singleActionText,
    Function singleActionOnPressed,
    Widget bottomPostWidget,
    Widget bottomPreWidget,
    Widget bottomCenterWidget,
    double? height,
    double? width,
    double textPadding ,
    String msg,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) =>
        XDialog(
          text: msg,
          child: child,
          backgroundColor: backgroundColor,
          elevation: elevation,
          clipBehavior: clipBehavior,
          insetAnimationCurve: insetAnimationCurve,
          insetAnimationDuration: insetAnimationDuration,
          insetPadding: insetPadding,
          shape: shape,
          textWidget: textWidget,
          actionBar: actionBar,
          singleActionText: singleActionText,
          singleActionOnPressed: singleActionOnPressed,
          bottomPostWidget: bottomPostWidget,
          bottomPreWidget: bottomPreWidget,
          bottomCenterWidget: bottomCenterWidget,
          height: height,
          width: width,
          textPadding: textPadding ,
        )
    );
  };


}

 */




class XShowDialog{

  XShowDialog({this.centerText, this.textWidget, this.text,
    this.bottomCenterWidget,
    this.onPressed});

  final Widget? textWidget;
  final String? text;
  final Widget? bottomCenterWidget;
  final String? centerText;
  final VoidCallback? onPressed;


  show(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            XDialog(
              text: text,
              textWidget: textWidget,

              bottomCenterWidget: Utils.shrinkIfEmpty(
                  primaryWidget: bottomCenterWidget,
                  text: centerText,
                  textWidget: XTextButton(
                      text: centerText ?? StringUtils.empty,
                      onPressed: onPressed ?? (){
                        Navigator.of(context).pop();
                      }
                  )
              )
            )
    );
  }



  static Function display = (BuildContext context, {
    Widget? child,
    Color? backgroundColor,
    double? elevation,
    Clip? clipBehavior,
    Curve? insetAnimationCurve,
    Duration? insetAnimationDuration,
    EdgeInsets? insetPadding,
    ShapeBorder? shape,
    String? text,
    Widget? textWidget,
    Widget? actionBar,
    Widget? singleActionWidget,
    String? singleActionText,
    VoidCallback? singleActionOnPressed,
    Widget? bottomPostWidget,
    Widget? bottomPreWidget,
    Widget? bottomCenterWidget,
    double? height,
    double? width,
    double? textPadding ,
    String? msg,
  }) {
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            XDialog(
              text: msg,
              child: child,
              backgroundColor: backgroundColor,
              elevation: elevation,
              clipBehavior: clipBehavior,
              insetAnimationCurve: insetAnimationCurve,
              insetAnimationDuration: insetAnimationDuration,
              insetPadding: insetPadding,
              shape: shape,
              textWidget: textWidget,
              actionBar: actionBar,
              singleActionText: singleActionText,
              singleActionOnPressed: singleActionOnPressed,
              bottomPostWidget: bottomPostWidget,
              bottomPreWidget: bottomPreWidget,
              bottomCenterWidget: bottomCenterWidget,
              height: height,
              width: width,
              textPadding: textPadding ,
            )
    );
  };


}


