import 'package:engine_widgets/widgets/eng_text.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class XMoreIndicator extends StatelessWidget {

  final TextStyle? style;
  final TextOverflow? overflow;
  final int maxLines;
  final TextAlign? textAlign;
  final double? size;
  final Color? color;

  const XMoreIndicator({
    this.style,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 2,
    this.textAlign,
    this.size,
    this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle();
    /*
    TODO
    TextStyle textStyle = TextStyle(
      fontFamily: ArabicFonts.Cairo,
      package: 'google_fonts_arabic',
      fontWeight: FontWeight.normal
    );

     */

    if (size != null) textStyle = textStyle.copyWith(fontSize: size);

    if (color != null) textStyle = textStyle.copyWith(color: color);

    if(size != null )
      textStyle = textStyle.copyWith(fontSize: size);

    if(color != null)
      textStyle = textStyle.copyWith(color: color);

    return EngText(
      ' ... ',
      style: style ?? textStyle,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
