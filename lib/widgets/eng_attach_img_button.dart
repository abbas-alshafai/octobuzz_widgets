// import '../constants/x_icons.dart';
//
// import '../themes/measures.dart';
// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
//
// class EngAttachImageButton extends StatelessWidget {
//
//   final VoidCallback onPressed;
//   final Color? color;
//   final AlignmentGeometry alignment;
//   final double iconSize;
//   final bool isCamera;
//   final bool isCircle;
//
//   const EngAttachImageButton({
//     Key? key,
//     this.onPressed,
//     this.color,
//     this.alignment,
//     this.iconSize,
//     this.isCamera = false,
//     this.isCircle
//   }) : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     Widget icon = Padding(
//       padding: EdgeInsets.all(16),
//       child: Icon(
//         isCamera ? XIcons.camera : XIcons.attachFile,
//         size: attachImageIconSize,
//       ),
//     );
//
//     return GestureDetector(
//       onTap: onPressed,
//       child: isCircle ?
//       CircleAvatar(
//         child: icon,
//       ) :
//       Card(
//         color: ThemeFactory.instance.getTheme().secondary,
//         elevation: 0,
//         child: icon,
//       ),
//     );
//   }
// }
