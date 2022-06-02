// import '../constants/x_icons.dart';
// import '../themes/theme_factory.dart';
// import '../widgets/x_dialog.dart';
// import 'package:flutter/material.dart';
//
// import 'x_icon_button.dart';
// import 'x_text.dart';
//
// class XInfoIcon extends StatelessWidget {
//   const XInfoIcon({Key? key, this.onPressed, this.msg, this.msgKey,
//     this.singleActionText, this.displayChild,
//     this.onSolidColor = false }) : super(key: key);
//
//   final VoidCallback onPressed;
//   final String msg;
//   final String msgKey;
//   final Widget displayChild;
//   final String? singleActionText;
//   final bool onSolidColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return XIconButton(
//       iconData: XIcons.info_outline,
//       color: onSolidColor
//         ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//         : ThemeFactory.instance.getTheme().secondary,
//       onPressed: onPressed ?? () {
//         XDialog.show(context,
//           textWidget: displayChild ?? Text(msg ?? msgKey),
//           singleActionText: singleActionText,
//           singleActionOnPressed: () {
//             Navigator.of(context).pop();
//           },
//         );
//       },
//     );
//   }
// }
