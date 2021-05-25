// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
//
// import 'x_icon_button.dart';
// import 'x_text_field.dart';
//
//
// class XMapSearchTextField extends StatelessWidget {
//   const XMapSearchTextField({Key? key,
//     this.hintText,
//     this.onPressed,
//     this.textOnChange
//   })
//       : super(key: key);
//
//   final String? hintText;
//   final VoidCallback? onPressed;
//   final ValueChanged<String>? textOnChange;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 30,
//       right: 15,
//       left: 15,
//       child: Container(
//         height: 50,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: ThemeFactory.instance.getTheme().themeData.backgroundColor
//         ),
//
//         child: XTextField(
//           decoration: InputDecoration(
//               hintText: hintText,
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 15, left: 15),
//               suffixIcon: XIconButton(
//                 iconData: Icons.search,
//                 iconSize: 30,
//                 onPressed: onPressed,
//               )
//           ),
//           onChanged: textOnChange,
//         ),
//       )
//     );
//   }
// }
