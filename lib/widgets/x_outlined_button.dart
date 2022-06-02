// import 'package:engine_utils/utils/string_utils.dart';
// import '../utils/button_utils.dart';
// import '../utils/utils.dart';
//
// import '../themes/theme_factory.dart';
// import '../widgets/x_icon.dart';
// import '../widgets/x_text.dart';
// import 'package:flutter/material.dart';
//
// class XOutlinedButton extends StatelessWidget {
//
//   final VoidCallback? onPressed;
//   final Color? color;
//   final Widget? child;
//   final IconData? icon;
//   final double? iconSize;
//   final double? size;
//   final double? borderRadius;
//   final String? text;
//   final bool showOnSolidColor;
//
//   const XOutlinedButton({
//     Key? key,
//     this.onPressed,
//     this.color,
//     this.icon,
//     this.iconSize,
//     this.child,
//     this.size = 96,
//     this.borderRadius,
//     this.text,
//     this.showOnSolidColor = true})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     final Color _color = color
//         ?? (showOnSolidColor
//             ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//             : ThemeFactory.instance.getTheme().themeData.primaryColor);
//
//     Widget _child;
//     if( StringUtils.instance.isNotBlank(text) )
//       _child = Text(text!, color: _color,);
//     else if(icon != null){
//       assert(icon != null);
//       _child = XIcon(
//         icon!,
//         color: _color,
//       );
//     } else {
//       _child = SizedBox.shrink();
//     }
//
//     return SizedBox(
//       height: size,
//       width: size,
//       child: OutlinedButton(
//         onPressed: onPressed,
//         child: child ?? _child,
//         // TODO
//         /*
//         style: ButtonStyle(
//           shape: ButtonUtils.getBorder(),
//           backgroundColor: ButtonUtils.getBackgroundColor(context),
//
//           /*
//           splashColor: Theme.of(context).accentColor,
//           highlightedBorderColor: Theme.of(context).accentColor,
//           focusColor: Theme.of(context).accentColor,
//           hoverColor: Theme.of(context).accentColor,
//            */
//         ),
//
//          */
//       ),
//
//     );
//   }
// }
