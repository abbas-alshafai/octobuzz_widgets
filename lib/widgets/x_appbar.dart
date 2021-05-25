import 'package:engine_utils/utils/string_utils.dart';
import 'package:engine_widgets/widgets/eng_appbar.dart';
import '../themes/theme_factory.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

class XAppBar extends EngAppBar{
  XAppBar({
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
    Color? titleColor,
    bool automaticallyImplyLeading = true,
    VoidCallback? actionOnPressed,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
  })
      : super (
    bottom: bottom,
    iconTheme: iconTheme ?? IconThemeData(
      color: ThemeFactory.instance.getTheme().themeData.primaryColor
    ),
    title: title ?? (
      StringUtils.instance.isBlank(titleText)
          ? SizedBox.shrink()
          : Text(titleText!)
          /*
            XText(
              titleText!,
              color: titleColor ?? ThemeFactory.instance.getTheme()
                  .themeData.primaryColor,
              style: GoogleFonts.comfortaa(
                color: titleColor ?? ThemeFactory.instance.getTheme()
                    .themeData.primaryColor,
              )
            )

           */
    ),
    leading: leading ?? SizedBox.shrink(),

    actions: /*actionIconData != null
        ? <Widget>[
          XSeqIconButton(
            icon: actionIconData,
            // iconColor: ThemeFactory.instance.getTheme().themeData.primaryColor,
            onPressed: actionOnPressed ?? (){},
          ),
        ]
        : */actions,
    backgroundColor: backgroundColor ?? Colors.transparent ,
    elevation: elevation ?? 0.0,
    textTheme: textTheme,
    centerTitle: centerTitle ?? true,
    titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
    automaticallyImplyLeading: automaticallyImplyLeading,
    flexibleSpace: flexibleSpace,
  );
}
