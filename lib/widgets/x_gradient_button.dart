import 'package:engine_utils/utils/string_utils.dart';

import '../utils/utils.dart';

import '../themes/theme_factory.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';

class XGradientButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String? text;
  final Widget? textWidget;
  final Color? color;
  final Color? textColor;
  final TextStyle? textStyle;

  const XGradientButton({Key? key,
    required this.onPressed,
    this.text,
    this.textWidget,
    this.color,
    this.textColor,
    this.textStyle
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6),
        constraints: BoxConstraints(
          maxWidth: 140,
          maxHeight: 48
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          gradient: LinearGradient(
            colors: [
              ThemeFactory.instance.getTheme().gradientOne,
              ThemeFactory.instance.getTheme().gradientTwo,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Utils.shrinkIfEmpty(
            primaryWidget: textWidget,
            text: text,
            textWidget: XText( text ?? StringUtils.empty,
              style: textStyle,
              color: textColor ?? Colors.white,
            )
          ),
        ),
      ),
    );


//    return GestureDetector(
//      onTap: onPressed,
//      child: Container(
//        constraints: BoxConstraints(
//          minHeight: 40,
//          maxHeight:
//        ),
////        width: 300,
////        height: 100,
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//            colors: [
//              Colors.teal,
//              Colors.teal[200],
//            ],
//            begin: Alignment.topLeft,
//            end: Alignment.bottomRight,
//          ),
//          borderRadius: BorderRadius.circular(20),
//          boxShadow: [
//            BoxShadow(
//              color: Colors.black12,
//              offset: Offset(5, 5),
//              blurRadius: 10,
//            )
//          ],
//        ),
//        child: Center(
//          child: textWidget ?? XText( text,
////            style: TextStyle(
////              color: Colors.white,
////              fontSize: 30,
////              fontWeight: FontWeight.w500,
////            ),
//          ),
//        ),
//      ),
//    );
  }
}
