// import 'package:engine_utils/utils/string_utils.dart';
//
// import '../utils/utils.dart';
//
// import '../themes/measures.dart';
// import '../themes/theme_factory.dart';
// import '../widgets/x_icon.dart';
// import '../widgets/x_main_screen_content.dart';
// import '../widgets/x_text.dart';
// import 'package:flutter/material.dart';
// import '../widgets/x_container_padding.dart';
// import 'package:google_fonts/google_fonts.dart';
//
//
// class XOnBoardingContent extends StatelessWidget {
//
//   final IconData? icon;
//   final Widget? imageWidget;
//   final Widget? titleWidget;
//   final String? titleText;
//   final Color? titleColor;
//   final Color? descriptionColor;
//   final Color? iconColor;
//   final double? iconSize;
//   final String? descriptionText;
//   final Widget? descriptionWidget;
//   final Color? backgroundColor;
//   final Widget? actionWidget;
//   final Widget? altActionWidget;
//
//   const XOnBoardingContent({
//     Key? key,
//     this.imageWidget,
//     this.titleWidget,
//     this.descriptionWidget,
//     this.backgroundColor,
//     this.icon,
//     this.titleText,
//     this.descriptionText,
//     this.titleColor,
//     this.descriptionColor,
//     this.iconColor,
//     this.iconSize,
//     this.actionWidget,
//     this.altActionWidget
//   })
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> contents = [];
//
//     final Widget title = Utils.shrinkIfEmpty(
//       primaryWidget: titleWidget,
//       text: titleText,
//       textWidget: XMainScreenContent(
//           child: XText(titleText!,
//             color: titleColor ?? ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//             style: GoogleFonts.comfortaa(
//               color: descriptionColor
//                   ?? ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//               fontSize: 24,
//             ),
//           )
//       )
//     );
//
//     final Widget description = Utils.shrinkIfEmpty(
//       primaryWidget: descriptionWidget,
//       text: descriptionText,
//       textWidget: XMainScreenContent(
//           child: XText(descriptionText ?? StringUtils.empty,
//             color: descriptionColor
//                 ?? ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//             maxLines: 20,
//           )
//       )
//     );
//
//
//     if(imageWidget != null)
//       contents.add(imageWidget!);
//
//     if(icon != null)
//       contents.add(XIcon(icon!,
//         size: iconSize ?? 128, // TODO
//         color: iconColor ?? ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//       ));
//
//     if((imageWidget != null || icon != null)
//         && (title != null || description != null)
//     )
//       contents.add(const SizedBox(height: vDoubleSpace,));
//
//     if(title != null) {
//       contents.add(title);
//       contents.add(const SizedBox(height: vSpace,));
//     }
//
//     if(description != null)
//       contents.add(description);
//
//     if(actionWidget != null)
//       contents.add(actionWidget!);
//
//     if(altActionWidget != null)
//       contents.add(altActionWidget!);
//
//
//     return Padding(
//       padding: XContainerPadding.build(),
//       child: Wrap(
//         crossAxisAlignment: WrapCrossAlignment.center,
//         alignment: WrapAlignment.center,
//         direction: Axis.vertical,
//         children: contents,
//       ),
//     );
//   }
// }
