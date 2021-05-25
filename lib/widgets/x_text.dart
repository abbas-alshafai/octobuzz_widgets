import 'package:engine_utils/utils/string_utils.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class XText extends StatelessWidget {

  final String text;
  final TextStyle? style;
  final TextOverflow overflow;
  final int maxLines;
  final TextAlign? textAlign;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final String? lang;
  final bool softWrap;
  final bool handleNull;

  const XText(
    this.text, {
    this.style,
    this.handleNull = true,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 6,
    this.textAlign,
    this.size,
    this.weight,
    this.lang,
    this.color,
    this.softWrap = true,
    Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle ts = DefaultTextStyle.of(context).style;

    if (size != null)   ts = ts.copyWith(fontSize: size);
    if (color != null)  ts = ts.copyWith(color: color);
    if (weight != null) ts = ts.copyWith(fontWeight: weight);

    if(size != null )
      ts = ts.copyWith(fontSize: size);

    /*
    EngText(
      text ?? StringUtils.empty,
      style: style ?? ts,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap,
    );
     */


    return StringUtils.instance.isBlank(text)
        ? SizedBox.shrink()
        : Text(text,
          style: style,
          overflow: overflow,
          maxLines: maxLines,
          textAlign: textAlign,
          softWrap: true
        );
  }
}
