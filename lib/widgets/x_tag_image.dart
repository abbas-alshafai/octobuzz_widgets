import 'package:engine_utils/utils/string_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

import 'x_tag.dart';

class XTagImage extends XTag{

  XTagImage({
    String? imageLocation,
    String? tagName,
    VoidCallback? onTap,
    double? width,
    Widget? titleWidget,
    double? padding,
    Widget? tag,
  })
  :
  super(
    tag: Utils.shrinkIfEmpty(
      text: imageLocation,
      textWidget: Image.asset(imageLocation ?? StringUtils.empty)
    ),
    tagName: tagName,
    onTap: onTap,
    width: width,
    titleWidget: titleWidget,
    padding: padding,
  );
}
