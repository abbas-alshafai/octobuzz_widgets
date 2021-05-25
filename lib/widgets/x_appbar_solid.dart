import '../themes/measures.dart';

import '../utils/utils.dart';

import '../themes/theme_factory.dart';
import '../widgets/x_appbar.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

import 'x_icon_button.dart';

class XAppBarSolid extends XAppBar{
  XAppBarSolid({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    IconData? actionIconData,
    Color? backgroundColor,
    double? elevation,
    TextTheme? textTheme,
    bool? centerTitle,
    double? titleSpacing,
    IconThemeData? iconTheme,
    String? titleText,
    VoidCallback? actionOnPressed,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
  })
      : super (


    iconTheme: iconTheme ?? IconThemeData(
      color: ThemeFactory.instance.getTheme().themeData.primaryColor
          .withOpacity(OpacityRatios.normal)
    ),
    title: Utils.shrinkIfEmpty(
      primaryWidget: title,
      text: titleText,
      // altWidget: XText(
      //   titleText!,
      //   //      color: ThemeFactory.instance.getTheme().secondary,
      //   color: Colors.black87, // TODO
      //   // style: GoogleFonts.comfortaa( // TODO
      //   //   //        color: Colors.white,
      //   //   //        fontSize: 14,
      //   //   //        fontWeight: FontWeight.w400,
      //   //   //        textStyle: Theme.of(context).textTheme.display1
      //   // )
      // ),
    ),





    leading: leading ?? SizedBox.shrink(),
    actions:
      /*
      actionIconData != null
        ? <Widget>[
          XIconButton(

            iconData: actionIconData,
              //      color: ThemeFactory.instance.getTheme().secondary,
              color: Colors.white,
            onPressed: actionOnPressed
          ),

        ]
        :

       */
        actions,
    elevation: elevation ?? 4,
    textTheme: textTheme,
    centerTitle: centerTitle ?? true,
    titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
    bottom: bottom,


    flexibleSpace: backgroundColor != null
        ? null
        : (flexibleSpace ?? Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(

                colors: [
                  // Colors.orange,
                  // Colors.amber,
                  // Colors.blueGrey,
                  ThemeFactory.instance.getTheme().gradientOne,
                  ThemeFactory.instance.getTheme().gradientTwo
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            )
          )
          )
    ,

  );
}
