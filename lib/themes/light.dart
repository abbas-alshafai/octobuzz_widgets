// import 'package:flutter/material.dart';
//
// import 'theme_factory.dart';
//
// class Light implements ThemeAbstract {
//
//   Light({required this.gradientOne, required this.gradientTwo,
//     required this.primary, required this.accent,
//     required this.secondary,
//     this.onSolidContrast = Colors.white,
//     this.background
//   });
//
//   final Color primary;
//   final Color accent;
//   final Color secondary;
//   final Color background;
//   final Color onSolidContrast;
//   final Color gradientOne;
//   final Color gradientTwo;
//
//
//
//   @override
//   get getSecondary => secondary;
//
//   @override
//   get theme => ThemeData(
//     primaryColor: primary,
//     backgroundColor: background,
//     scaffoldBackgroundColor: background,
//     cursorColor: accent,
//     buttonTheme: ButtonThemeData(
//       buttonColor: primary,
//     ),
//     accentColor: accent,
//     focusColor: accent,
//     primaryColorDark: primary,
//   );
//
//   static final ThemeData t = ThemeData();
//
// //  static int hexColor(String hexColor) {
// //    return int.parse("0xFF" + hexColor.replaceAll('#', ''));
// //  }
//
//
//   static final Map<int, Color> color = {
//
//     50:  Colors.orange,
//     100: Colors.orange,
//     200: Colors.orange,
//     300: Colors.orange,
//     400: Colors.orange,
//     500: Colors.orange,
//     600: Colors.orange,
//     700: Colors.orange,
//     800: Colors.orange,
//     900: Colors.orange,
//
//
// //    50:  Color(hexColor("AE8186")),
// //    100: Color(hexColor("A06C72")),
// //    200: Color(hexColor("93575E")),
// //    300: Color(hexColor("85424A")),
// //    400: Color(hexColor("782D36")),
// //    500: Color(hexColor("822438")),
// //    600: Color(hexColor("62161F")),
// //    700: Color(hexColor("822438")),
// //    800: Color(hexColor("4E1219")),
// //    900: Color(hexColor("451016")),
//   };
//
//   static final MaterialColor primaryColors = MaterialColor(hexColor("35B185"), color);
//
//
//   @override
//   Color get btnAddProduct => primary;
//
//   @override
//   Color get btn => primary;
//
//   @override
//   Color get btnText => theme.backgroundColor;
//
//   @override
//   // TODO: implement btnAccent
//   Color get btnAccent => theme.accentColor;
//
//   @override
//   // TODO: implement textInputBorder
//   Color get textInputBorder => secondary;
//
//   @override
//   Color get getTextContrast => theme.backgroundColor;
//
//   @override
//   // TODO: implement onSolidContrast
//   Color get getOnSolidContrast => onSolidContrast;
//
//   @override
//   // TODO: implement gradientOne
//   Color get gradientOne => gradientOne;
//
//   @override
//   // TODO: implement gradientTwo
//   Color get gradientTwo => gradientTwo;
//
//   @override
//   // TODO: implement getBackground
//   Color get getBackground => background;
// }
