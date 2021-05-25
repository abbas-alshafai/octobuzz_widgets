// import '../utils/utils.dart';
//
// import '../constants/x_icons.dart';
// import '../widgets/x_dialog.dart';
// import 'package:flutter/material.dart';
//
//
// class XErrorIcon extends StatelessWidget {
//   const XErrorIcon({
//     Key? key,
//     this.onPressed,
//     this.msg,
//     this.singleActionText,
//     this.displayChild,
//     this.isOnSolidColor = false }) : super(key: key);
//
//   final VoidCallback? onPressed;
//   final String? msg;
//   final Widget? displayChild;
//   final String? singleActionText;
//   final bool isOnSolidColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return XIconButton(
//       iconData: isOnSolidColor ? XIcons.errorOutline : XIcons.error,
//       color: Theme.of(context).errorColor,
//       onPressed: onPressed ?? () {
//         XDialog.show(context,
//           textWidget: Utils.shrinkIfEmpty(
//             primaryWidget: displayChild,
//             text: msg
//           ),
//           singleActionText: singleActionText,
//           singleActionOnPressed: () {
//             Navigator.of(context).pop();
//           },
//         );
//       },
//     );
//   }
// }
