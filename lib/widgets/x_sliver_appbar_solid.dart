import 'package:google_fonts/google_fonts.dart';

import '../themes/theme_factory.dart';
import '../widgets/x_appbar.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

import 'x_icon_button.dart';

class XSilverAppBarSolid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

    );
  }
}


/*
class XSliverAppBarSolid extends XAppBar{
  XSliverAppBarSolid({
    Widget title,
    Widget leading,
    List<Widget> actions,
    IconData actionIconData,
    Color? backgroundColor,
    double? elevation,
    TextTheme textTheme,
    bool centerTitle,
    double titleSpacing,
    IconThemeData iconTheme,
    String titleText,
    Function actionOnPressed,
    Widget flexibleSpace,
  })
      : super (
    iconTheme: iconTheme ?? IconThemeData(
      color: ThemeFactory.instance.getTheme().secondary
    ),
    title: title ?? XText(
      titleText,
//      color: ThemeFactory.instance.getTheme().secondary,
      color: Colors.white,
      style: GoogleFonts.comfortaa(

      )
    ),
    leading: leading,
    actions: actionIconData != null
        ? <Widget>[
          XIconButton(

            iconData: actionIconData,
              //      color: ThemeFactory.instance.getTheme().secondary,
              color: Colors.white,
            onPressed: actionOnPressed
          ),

        ]
        : actions,
//    backgroundColor: backgroundColor ?? ThemeFactory.instance.getTheme().themeData.primaryColor,
    elevation: elevation ?? 4,
    textTheme: textTheme,
    centerTitle: centerTitle ?? true,
    titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
    flexibleSpace: backgroundColor != null
        ? null
        : (flexibleSpace ?? Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(

                colors: [
//                  ThemeFactory.instance.getTheme().themeData.primaryColor,
                  ThemeFactory.instance.getTheme().gradientTwo,
                  ThemeFactory.instance.getTheme().gradientOne,
//                  Color(0xFF762864),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),

      //        gradient: LinearGradient(
      //            begin: Alignment.topLeft,
      //            end: Alignment.bottomRight,
      //            colors: <Color>[
      ////              ThemeFactory.instance.getTheme().themeData.primaryColor,
      ////              Color(0xFF762864),
      //
      //
      //              ThemeFactory.instance.getTheme().gradientOne,
      //              ThemeFactory.instance.getTheme().gradientTwo,
      //            ]
      //        )
            )
          )
          )

    ,
  );
}

 */
