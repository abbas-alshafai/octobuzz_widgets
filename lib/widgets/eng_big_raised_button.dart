// import 'package:engine_widgets/widgets/eng_raised_btn.dart';
// import '../themes/theme_factory.dart';
//
// import '../themes/measures.dart';
//
// import 'x_text.dart';
// import 'package:flutter/material.dart';
//
// class XBigRaisedButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final Widget? child;
//   final Color? color;
//   final Color highlightColor;
//   final Color disabledColor;
//   final String text;
//
//   XBigRaisedButton(
//       {this.onPressed,
//       this.child,
//       this.color,
//       this.text,
//       this.highlightColor,
//       this.disabledColor, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: bigBtnHeight,
//       child: EngRaisedButton(
//         onPressed: onPressed,
//         color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//         child: Text(
//           text,
//           style: TextStyle(
//             fontSize: bigBtnFontSize,
//             color: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//           ),
//         ),
//         highlightColor: highlightColor,
//         disabledColor: disabledColor,
//       ),
//     );
//   }
// }
