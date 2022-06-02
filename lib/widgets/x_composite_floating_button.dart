// // import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart' as afab1;
// // import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
// // import 'package:fab_circular_menu/fab_circular_menu.dart';
// // import '../constants/x_icons.dart';
// // import '../themes/styles.dart';
// // import '../themes/theme_factory.dart';
// // import '../widgets/x_list_tile.dart';
// // import 'package:floating_action_bubble/floating_action_bubble.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_boom_menu/flutter_boom_menu.dart';
// // import 'package:flutter_speed_dial/flutter_speed_dial.dart';
//
// import 'x_icon.dart';
// import 'x_text.dart';
//
// class XCompositeFloatingButton extends StatelessWidget {
//
//   final bool visible;
//   final Color overlayColor;
//   final double overlayOpacity;
//   final double? elevation;
//   final List<XFloatingButtonItem> menuItems;
//
//   const XCompositeFloatingButton({
//     Key? key,
//     this.visible = true,
//     this.menuItems,
//     this.elevation = 0.8,
//     this.overlayColor = Colors.white,
//     this.overlayOpacity = 0.8,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return _fabSheet();
//     // return _flutterSpeedDial();
//     // return _fabCircularMenu(); *******
//     // return _animatedFab();
//     // return _speedDial(context);
//
//
//
//
//
//
//     // return Padding(
//     //   padding: const EdgeInsets.all(24.0),
//     //   child: BoomMenu(
//     //     animatedIcon: AnimatedIcons.menu_close,
//     //     animatedIconTheme: IconThemeData(size: 22.0),
//     //     //child: Icon(Icons.add),
//     //     onOpen: () => print('OPENING DIAL'),
//     //     onClose: () => print('DIAL CLOSED'),
//     //     scrollVisible: visible,
//     //
//     //     // marginRight: 8,
//     //     // marginBottom: 8,
//     //     // marginLeft: 8,
//     //     // fabPaddingRight: 8,
//     //     // fabPaddingTop: 8,
//     //     // fabPaddingLeft: 8,
//     //
//     //     overlayColor: overlayColor,
//     //     overlayOpacity: overlayOpacity,
//     //     foregroundColor: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//     //     children: menuItems.map((item) => MenuItem(
//     //       title: item.titleText,
//     //       subtitle: item.descText,
//     //       onTap: item.onTap,
//     //
//     //       child: item.child ?? XIcon(item.icon, color: item.isOnSolidColor
//     //           ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//     //           : ThemeFactory.instance.getTheme().themeData.primaryColor),
//     //
//     //       backgroundColor: item.backgroundColor
//     //           ?? ThemeFactory.instance.getTheme().themeData.primaryColor,
//     //
//     //       titleColor: item.isOnSolidColor
//     //           ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//     //           : ThemeFactory.instance.getTheme().themeData.primaryColor,
//     //
//     //       subTitleColor: item.isOnSolidColor
//     //           ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//     //           : ThemeFactory.instance.getTheme().themeData.primaryColor,
//     //
//     //     )).toList(),
//     //
//     //   ),
//     // );
//
//   }
//
//   // Widget _flutterSpeedDial() {
//   //   return AnimatedFloatingActionButton(
//   //     //Fab list
//   //       fabButtons: menuItems.map((item) => FloatingActionButton(
//   //         child: XIcon(item.icon),
//   //         tooltip: item.titleText,
//   //       )).toList(),
//   //       colorStartAnimation: Colors.blue,
//   //       colorEndAnimation: Colors.red,
//   //       animatedIconData: AnimatedIcons.menu_close //To principal button
//   //   );
//   // }
//
//
//
//   // Widget _animatedFab() {
//   //   return afab1.AnimatedFloatingActionButton(
//   //       key: this.key,
//   //       fabButtons: menuItems.map((item) => Container(
//   //         child: XListTile(
//   //           leading: XIcon(item.icon),
//   //           titleText: item.titleText,
//   //           subtitleText: item.subtitleText,
//   //         ),
//   //       )).toList(),
//   //       colorStartAnimation: Colors.blue,
//   //       colorEndAnimation: Colors.red,
//   //       animatedIconData: AnimatedIcons.menu_close //To principal button
//   //   );
//   // }
//
//
//
//   // Widget _speedDial(BuildContext context) {
//   //   return SpeedDial(
//   //     // both default to 16
//   //     marginRight: 18,
//   //     marginBottom: 20,
//   //
//   //     animatedIcon: AnimatedIcons.menu_close,
//   //     animatedIconTheme: IconThemeData(size: 22.0),
//   //     // this is ignored if animatedIcon is non null
//   //     // child: Icon(Icons.add),
//   //     visible: visible,
//   //     // If true user is forced to close dial manually
//   //     // by tapping main button and overlay is not rendered.
//   //     closeManually: false,
//   //     curve: Curves.bounceIn,
//   //
//   //     overlayColor: overlayColor,
//   //     overlayOpacity: overlayOpacity,
//   //
//   //     onOpen: () => print('OPENING DIAL'),
//   //     onClose: () => print('DIAL CLOSED'),
//   //     tooltip: 'Speed Dial',
//   //     heroTag: 'speed-dial-hero-tag',
//   //
//   //     backgroundColor: Theme.of(context).accentColor,
//   //     foregroundColor: ThemeFactory.instance.getTheme().onPrimarySolidContrast,
//   //
//   //     elevation: elevation,
//   //
//   //     shape: CircleBorder(),
//   //
//   //     children: menuItems.map((item) => SpeedDialChild(
//   //       child: Padding(padding: EdgeInsets.all(8),
//   //         child: item.child ?? XIcon(item.icon, size: 18,color: item.isOnSolidColor
//   //             ? ThemeFactory.instance.getTheme().onPrimarySolidContrast
//   //             : ThemeFactory.instance.getTheme().themeData.primaryColor),
//   //       ),
//   //       onTap: item.onTap,
//   //       backgroundColor: item.backgroundColor ?? Theme.of(context).primaryColor,
//   //       elevation: item.elevation,
//   //       labelStyle: textStyle,
//   //       label: item.titleText,
//   //     )).toList(),
//   //   );
//   // }
//
//
//
//   // Widget _fabCircularMenu() {
//   //   return SafeArea(child: FabCircularMenu(
//   //       children: menuItems.map((item) =>
//   //         SafeArea(child: RaisedButton.icon(
//   //             icon: XIcon(item.icon),
//   //             label: Text(item.titleText),
//   //             onPressed: (){}
//   //         ),)
//   //       ).toList()
//   //   ));
//   // }
//
//
//
//   Widget _fabSheet() {}
//
//
//
// }
//
//
// class XFloatingButtonItem {
//
//   final IconData icon;
//   final Widget? child;
//   final VoidCallback? onTap;
//   final Color? backgroundColor;
//   final bool isOnSolidColor;
//   final String titleText;
//   final String subtitleText;
//   final double? elevation;
//
//
//   XFloatingButtonItem({
//     this.child,
//     this.icon,
//     this.onTap,
//     this.backgroundColor,
//     this.isOnSolidColor,
//     this.elevation,
//     this.titleText,
//     this.subtitleText
//   });
// }
