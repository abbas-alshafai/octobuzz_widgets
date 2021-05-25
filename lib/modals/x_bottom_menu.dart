// import 'package:engine_utils/utils/string_utils.dart';
// import '../constants/x_icons.dart';
// import '../themes/theme_factory.dart';
// import '../widgets/x_list_tile.dart';
// import '../widgets/x_text.dart';
// import 'package:flutter/material.dart';
//
//
// showXBottomMenu(BuildContext context, final XBottomMenu menu,
//     {final showItemDesc = false}){
//
//   showModalBottomSheet(context: context, builder: (context) {
//     return Container(
//       color: Color(0xFF737373), // TODO - move to theme
//       child: SafeArea(
//         child: Container(
//           child: _buildBottomAddMenu(menu,
//               showItemDesc: showItemDesc),
//           decoration: BoxDecoration(
//               color: Theme.of(context).canvasColor,
//               borderRadius: BorderRadius.only(
//                 topLeft: const Radius.circular(10),
//                 topRight: const Radius.circular(10),
//               )
//           ),
//         ),
//       ),
//     );
//   });
// }
//
// _buildBottomAddMenu(XBottomMenu menu, {final bool showItemDesc = true}) {
//   List<Widget> children = [];
//
//   if(StringUtils.instance.isNotBlank(menu.titleText) ||
//       StringUtils.instance.isNotBlank(menu.subtitleText)) {
//     children.add(SizedBox(height: 8));
//   }
//
//   if(StringUtils.instance.isNotBlank(menu.titleText))
//     children.add(
//       XText(menu.titleText!,
//         size: 24,
//         color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//       ),
//     ); // TODO add text style
//
//   if(StringUtils.instance.isNotBlank(menu.subtitleText))
//     children.add(XText(menu.subtitleText!)); // TODO add text style
//
//   if(StringUtils.instance.isNotBlank(menu.titleText) ||
//       StringUtils.instance.isNotBlank(menu.subtitleText)) {
//     children.add(SizedBox(height: 4,));
//     // children.add(XDrawerDivider());
//     children.add(Divider()); // TODO have a custom divider
//   }
//
//
//   if(showItemDesc)
//     children.addAll(menu.menuItems.map((e) => Column(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(e.icon),
//           title: XText(e.titleText),
//           onTap: e.onTap,
//         ),
//       ],
//     )).toList());
//   else
//     children.addAll(menu.menuItems.map((item) => Padding(
//       padding: const EdgeInsets.all(8),
//       child: Card(
//         color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//         child: XListTile(
//           leading: Icon(XIcons.add,
//               color: ThemeFactory.instance.getTheme().onPrimarySolidContrast),
//           trailing: Icon(item.icon,
//               color: ThemeFactory.instance.getTheme().onPrimarySolidContrast),
//           title: XText(item.titleText,
//               color: ThemeFactory.instance.getTheme().onPrimarySolidContrast),
//           subtitle: StringUtils.instance.isBlank(item.subtitleText)
//               ? null
//               : XText(item.subtitleText!,
//                   color: ThemeFactory.instance.getTheme().onPrimarySolidContrast
//                 ),
//           onTap: item.onTap,
//         ),
//       ),
//     )).toList());
//
//   return SingleChildScrollView(
//     child: SafeArea(
//       child: Column(
//         children: children,
//       ),
//     ),
//   );
// }
//
// class XBottomMenu{
//   final String? titleText;
//   final String? subtitleText;
//   final List<XBottomMenuItem> menuItems;
//
//   XBottomMenu({
//     this.titleText,
//     this.subtitleText,
//     required this.menuItems
//   });
// }
//
//
// class XBottomMenuItem{
//   final IconData icon;
//   final String titleText;
//   final String? subtitleText;
//   final GestureTapCallback onTap;
//
//   XBottomMenuItem({
//     required this.icon,
//     required this.titleText,
//     this.subtitleText,
//     required this.onTap
//   });
// }
