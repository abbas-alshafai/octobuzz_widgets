import 'package:engine_utils/utils/string_utils.dart';
import '../widgets/x_appbar.dart';
import 'package:flutter/material.dart';


class XAppBarSolid extends StatelessWidget implements PreferredSizeWidget {

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

  XAppBarSolid({
    this.title,
    this.leading,
    this.actions,
    this.actionIconData,
    this.backgroundColor,
    this.elevation,
    this.textTheme,
    this.centerTitle,
    this.titleSpacing,
    this.iconTheme,
    this.titleText,
    this.titleColor,
    this.automaticallyImplyLeading = true,
    this.actionOnPressed,
    this.flexibleSpace,
    this.bottom,
    this.toolbarHeight,
    Key? key,
  })   : preferredSize = Size.fromHeight(toolbarHeight ??
      kToolbarHeight + (bottom?.preferredSize.height ?? 0.0)),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return XAppBar(
      title: title ??
          (StringUtils.instance.isBlank(titleText)
              ? SizedBox.shrink()
              : Text(
            titleText!,
            style: TextStyle().copyWith(
                color: Theme.of(context).colorScheme.onPrimary),
          )),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      elevation: elevation,
      iconTheme: iconTheme,
      textTheme: textTheme,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: flexibleSpace,
      bottom: bottom,

    );
  }
  
}
