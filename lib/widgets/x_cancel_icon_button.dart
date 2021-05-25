// import '../constants/x_icons.dart';
// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
//
// import 'x_icon_button.dart';
//
// class XCancelIconButton extends StatelessWidget {
//   const XCancelIconButton({Key? key, this.onPressed, this.onSolidColor = false})
//       : super(key: key);
//
//   final VoidCallback? onPressed;
//   final bool onSolidColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return XIconButton(
//       onPressed: onPressed ?? () {
//         Navigator.pop(context);
//       },
//       color: onSolidColor
//           ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//           : ThemeFactory.instance.getTheme().secondary,
//       iconData: XIcons.x,
//     );
//   }
// }
