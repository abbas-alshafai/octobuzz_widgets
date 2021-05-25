//import 'package:flutter/material.dart';
//
//import 'theme_factory.dart';
//
//class Dark implements ThemeAbstract {
//  Color primary = Colors.deepOrange;
//  Color secondary = Colors.grey[300];
//  Color onSolidContrast = Colors.white;
//
//  @override
//  get theme => ThemeData(
//      primaryColor: primaryColors,
//      backgroundColor: Colors.grey[100],
//      scaffoldBackgroundColor: Colors.grey[100],
//      cursorColor: primary,
//      buttonTheme: ButtonThemeData(
//        buttonColor: primary,
//      ),
//      accentColor: primary,
//      focusColor: primary);
//
//  static final ThemeData t = ThemeData();
//
////  static int hexColor(String hexColor) {
////    return int.parse("0xFF" + hexColor.replaceAll('#', ''));
////  }
//
//
//  static final Map<int, Color> color = {
////    50:  Color(hexColor("AE8186")),
//    50:  Color.fromARGB(255, 66, 165, 245),
//    100: Color(hexColor("A06C72")),
//    200: Color(hexColor("93575E")),
//    300: Color(hexColor("85424A")),
//    400: Color(hexColor("782D36")),
//    500: Color(hexColor("822438")),
//    600: Color(hexColor("62161F")),
//    700: Color(hexColor("822438")),
//    800: Color(hexColor("4E1219")),
//    900: Color(hexColor("451016")),
//  };
//  static final MaterialColor primaryColors = MaterialColor(hexColor("3CBBB1"), color);
//
//
//  @override
//  Color get btnAddProduct => primary;
//
//  @override
//  Color get btn => primary;
//
//  @override
//  Color get btnText => theme.backgroundColor;
//
//  @override
//  // TODO: implement btnAccent
//  Color get btnAccent => theme.accentColor;
//
//  @override
//  // TODO: implement textInputBorder
//  Color get textInputBorder => secondary;
//
//  @override
//  // TODO: implement getSecondary
//  Color get getSecondary => secondary;
//
//  @override
//  // TODO: implement getTextContrast
//  Color get getTextContrast => theme.backgroundColor;
//
//  @override
//  // TODO: implement getOnSolidContrast
//  Color get getOnSolidContrast => onSolidContrast;
//
//  @override
//  // TODO: implement gradientOne
//  Color get gradientOne => throw UnimplementedError();
//
//  @override
//  // TODO: implement gradientTwo
//  Color get gradientTwo => throw UnimplementedError();
//
//
//}
