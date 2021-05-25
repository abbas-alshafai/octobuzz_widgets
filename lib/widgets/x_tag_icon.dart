import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

import 'x_tag.dart';

class XIconTag extends XTag{

  XIconTag({
    String? imageLocation,
    String? tagName,
    VoidCallback? onTap,
    double? width,
    Widget? titleWidget,
    double? padding,
    Widget? tag,
    IconData? iconData,
    Icon? icon,
  })
  :
  super(
    tag: icon ?? Icon(
      iconData,
      color: ThemeFactory.instance.getTheme().themeData.primaryColor,
    ),
    tagName: tagName,
    onTap: onTap,
    width: width,
    titleWidget: titleWidget,
    padding: padding,
  );
}
