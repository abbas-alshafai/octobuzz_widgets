// import 'package:google_fonts/google_fonts.dart';
//
// import '../themes/theme_factory.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts_arabic/fonts.dart';
//
// // TextStyle arTextStyle = TextStyle(
// //   fontFamily: ArabicFonts.Cairo,
// //   package: 'google_fonts_arabic',
// //   fontWeight: FontWeight.normal
// // );
// //
// //
// // TextStyle textStyleLight = textStyle.copyWith(
// //   fontWeight: FontWeight.normal
// // );
// //
// //
// // TextStyle centerLargeText = TextStyle(
// //   color: ThemeFactory.instance.getTheme().themeData.primaryColor,
// //   fontSize: 20,
// //   fontStyle: FontStyle.normal,
// //   fontWeight: FontWeight.normal,
// //
// // );
// //
// //
// // TextStyle textStyle = GoogleFonts.comfortaa(
// //   color: ThemeFactory.instance.getTheme().themeData.primaryColor,
// // );
//
// /*
// NAME       SIZE   WEIGHT   SPACING  2018 NAME
// display4   112.0  thin     0.0      headline1
// display3   56.0   normal   0.0      headline2
// display2   45.0   normal   0.0      headline3
// display1   34.0   normal   0.0      headline4
// headline   24.0   normal   0.0      headline5
// title      20.0   medium   0.0      headline6
// subhead    16.0   normal   0.0      subtitle1
// body2      14.0   medium   0.0      body1 (bodyText1)
// body1      14.0   normal   0.0      body2 (bodyText2)
// caption    12.0   normal   0.0      caption
// button     14.0   medium   0.0      button
// subtitle   14.0   medium   0.0      subtitle2
// overline   10.0   normal   0.0      overline
// */
//
//
// final TextStyle display4 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle display3 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle display2 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle display1 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle headline = TextStyle(fontSize: , fontWeight: , );
// final TextStyle title = TextStyle(fontSize: , fontWeight: , );
// final TextStyle subhead = TextStyle(fontSize: , fontWeight: , );
// final TextStyle body2 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle body1 = TextStyle(fontSize: , fontWeight: , );
// final TextStyle caption = TextStyle(fontSize: , fontWeight: , );
// final TextStyle button = TextStyle(fontSize: , fontWeight: , );
// final TextStyle subtitle = TextStyle(fontSize: , fontWeight: , );
// final TextStyle overline = TextStyle(fontSize: , fontWeight: , );
//
//
// class TextStyles{
//
//   final TextStyle bodyText1;
//   final TextStyle bodyText2;
//   final TextStyle button;
//   final TextStyle caption;
//   final TextStyle headline1;
//   final TextStyle headline2;
//   final TextStyle headline3;
//   final TextStyle headline4;
//   final TextStyle headline5;
//   final TextStyle headline6;
//   final TextStyle overline;
//   final TextStyle subtitle1;
//   final TextStyle subtitle2;
//
//   TextStyles({
//     required this.bodyText1,
//     required this.bodyText2,
//     required this.button,
//     required this.caption,
//     required this.headline1,
//     required this.headline2,
//     required this.headline3,
//     required this.headline4,
//     required this.headline5,
//     required this.headline6,
//     required this.overline,
//     required this.subtitle1,
//     required this.subtitle2
//   });
//
// }
//
// final TextTheme baseTextTheme = TextTheme(
//
// );
//
// const TextStyle arTextStyle = TextStyle(
//     fontFamily: ArabicFonts.Cairo,
//     package: 'google_fonts_arabic',
//     fontWeight: FontWeight.normal
// );
//
// final TextStyles arTextStyles = TextStyles(
//     bodyText1: baseTextTheme.bodyText1.copyWith(fontFamily: arTextStyle.fontFamily),
//     bodyText2: baseTextTheme.bodyText2.copyWith(fontFamily: arTextStyle.fontFamily),
//     button: baseTextTheme.button.copyWith(fontFamily: arTextStyle.fontFamily),
//     caption: baseTextTheme.caption.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline1: baseTextTheme.headline1.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline2: baseTextTheme.headline2.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline3: baseTextTheme.headline3.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline4: baseTextTheme.headline4.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline5: baseTextTheme.headline5.copyWith(fontFamily: arTextStyle.fontFamily),
//     headline6: baseTextTheme.headline6.copyWith(fontFamily: arTextStyle.fontFamily),
//     overline: baseTextTheme.overline.copyWith(fontFamily: arTextStyle.fontFamily),
//     subtitle1: baseTextTheme.subtitle1.copyWith(fontFamily: arTextStyle.fontFamily),
//     subtitle2: baseTextTheme.subtitle2.copyWith(fontFamily: arTextStyle.fontFamily)
// );
//
// Text(
//    'Roboto Mono sample',
//    style: TextStyle(fontFamily: 'RobotoMono'),
// );
//
// final TextStyle enTextStyle = GoogleFonts.comfortaa();
// TextStyles enTextStyles = TextStyles(
//     bodyText1: baseTextTheme.bodyText1.copyWith(fontFamily: const enTextStyle.fontFamily),
//     bodyText2: baseTextTheme.bodyText2.copyWith(fontFamily: enTextStyle.fontFamily),
//     button: baseTextTheme.button.copyWith(fontFamily: enTextStyle.fontFamily),
//     caption: baseTextTheme.caption.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline1: baseTextTheme.headline1.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline2: baseTextTheme.headline2.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline3: baseTextTheme.headline3.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline4: baseTextTheme.headline4.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline5: baseTextTheme.headline5.copyWith(fontFamily: enTextStyle.fontFamily),
//     headline6: baseTextTheme.headline6.copyWith(fontFamily: enTextStyle.fontFamily),
//     overline: baseTextTheme.overline.copyWith(fontFamily: enTextStyle.fontFamily),
//     subtitle1: baseTextTheme.subtitle1.copyWith(fontFamily: enTextStyle.fontFamily),
//     subtitle2: baseTextTheme.subtitle2.copyWith(fontFamily: enTextStyle.fontFamily)
// );
//
// /*
// TextStyles enTextStyles = TextStyles(
//     bodyText1: TextTheme().bodyText1.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     bodyText2: TextTheme().bodyText2.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     button: TextTheme().button.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     caption: TextTheme().caption.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline1: TextTheme().headline1.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline2: TextTheme().headline2.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline3: TextTheme().headline3.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline4: TextTheme().headline4.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline5: TextTheme().headline5.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     headline6: TextTheme().headline6.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     overline: TextTheme().overline.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     subtitle1: TextTheme().subtitle1.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily),
//     subtitle2: TextTheme().subtitle2.copyWith(fontFamily: GoogleFonts.comfortaa().fontFamily)
// );
//
//  */
