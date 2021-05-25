// import '../widgets/x_icon.dart';
// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
//
// class XSeqIconButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//   final Color? color;
//   final Color? iconColor;
//   final IconData icon;
//
//   const XSeqIconButton({
//     Key? key, this.onPressed, this.color, this.iconColor,
//     required this.icon})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return XIconButton(
//         iconData: icon,
//         color: iconColor ?? ThemeFactory.instance.getTheme().secondary,
//         onPressed: onPressed
//     );
//
// //    return Container(
// //      decoration: BoxDecoration(
// //        borderRadius: BorderRadius.circular(5),
// //        color: Colors.white,
// //      ),
// //      child: GestureDetector(
// //        onTap: onPressed,
// //        child: XIcon(
// //          icon,
// //          color: Colors.red, // TODO move to theme
// //        ),
// //      ),
// //    );
//
// //    return RaisedButton(
// //      shape: RoundedRectangleBorder(
// //          borderRadius: BorderRadius.circular(18.0),
// //          side: BorderSide(color: color ?? Colors.white)),
// //      onPressed: onPressed,
// //      color: color ?? Colors.white,
// //      child: XIcon( icon,
// //        color: iconColor ?? Colors.red,
// //      ),
// //    );
//   }
// }
