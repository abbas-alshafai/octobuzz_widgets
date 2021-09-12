import 'package:engine_utils/utils/string_utils.dart';
import 'package:flutter/material.dart';

// class XAppBar extends EngAppBar {
//   XAppBar({
//     Widget? title,
//     Widget? leading,
//     List<Widget>? actions,
//     IconData? actionIconData,
//     Color? backgroundColor,
//     double? elevation,
//     TextTheme? textTheme,
//     bool? centerTitle,
//     double? titleSpacing,
//     IconThemeData? iconTheme,
//     String? titleText,
//     Color? titleColor,
//     bool automaticallyImplyLeading = true,
//     VoidCallback? actionOnPressed,
//     Widget? flexibleSpace,
//     PreferredSizeWidget? bottom,
//   })
//       : super (
//     bottom: bottom,
//     iconTheme: iconTheme ?? IconThemeData(
//         color: ThemeFactory.instance
//             .getTheme()
//             .themeData
//             .primaryColor
//     ),
//     title: title ?? (
//         StringUtils.instance.isBlank(titleText)
//             ? SizedBox.shrink()
//             : Text(titleText!, style: TextStyle().copyWith(color: Theme
//             .of(context)
//             .colorScheme
//             .onBackground),)
//         /*
//             XText(
//               titleText!,
//               color: titleColor ?? ThemeFactory.instance.getTheme()
//                   .themeData.primaryColor,
//               style: GoogleFonts.comfortaa(
//                 color: titleColor ?? ThemeFactory.instance.getTheme()
//                     .themeData.primaryColor,
//               )
//             )
//
//            */
//     ),
//     leading: leading ?? SizedBox.shrink(),
//
//     actions: /*actionIconData != null
//         ? <Widget>[
//           XSeqIconButton(
//             icon: actionIconData,
//             // iconColor: ThemeFactory.instance.getTheme().themeData.primaryColor,
//             onPressed: actionOnPressed ?? (){},
//           ),
//         ]
//         : */actions,
//     backgroundColor: backgroundColor ?? Colors.transparent,
//     elevation: elevation ?? 0.0,
//     textTheme: textTheme,
//     centerTitle: centerTitle ?? true,
//     titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
//     automaticallyImplyLeading: automaticallyImplyLeading,
//     flexibleSpace: flexibleSpace,
//   );
// }

class XAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final IconData? actionIconData;
  final Color? backgroundColor;
  final double? elevation;
  final TextTheme? textTheme;
  final bool? centerTitle;
  final double? titleSpacing;
  final IconThemeData? iconTheme;
  final String? titleText;
  final Color? titleColor;
  final bool automaticallyImplyLeading;
  final VoidCallback? actionOnPressed;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  @override
  final Size preferredSize;

  XAppBar({
    this.title,
    this.leading,
    this.actions,
    this.actionIconData,
    this.backgroundColor, // = Colors.transparent,
    this.elevation = 0.0,
    this.textTheme,
    this.centerTitle = true,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.iconTheme,
    this.titleText,
    this.titleColor,
    this.automaticallyImplyLeading = false,
    this.actionOnPressed,
    this.flexibleSpace,
    this.bottom,
    this.toolbarHeight,
    Key? key,
  })  : preferredSize = Size.fromHeight(toolbarHeight ??
            kToolbarHeight + (bottom?.preferredSize.height ?? 0.0)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ??
          (StringUtils.instance.isBlank(titleText)
              ? null
              : Text(
                  titleText!,
                  style: TextStyle().copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                )),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor ?? Theme.of(context).backgroundColor, // ?? backgroundColor,
      elevation: elevation,
      iconTheme: IconTheme.of(context).copyWith(color: Theme.of(context).colorScheme.onBackground),
      textTheme: textTheme,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
    );
  }
}
