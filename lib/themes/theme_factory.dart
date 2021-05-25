import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ThemeFactory {

  ThemeFactory._();
  static final ThemeFactory instance = ThemeFactory._();

  XTheme getTheme({final String? langCode}) {

    // String? fontFamily;
    // switch(langCode){
    //
    //   /*
    //   TODO
    //   case 'ar':
    //     fontFamily = ArabicFonts.Cairo;
    //     break;
    //
    //    */
    //
    //   default:
    //     // fontFamily = GoogleFonts.comfortaa().fontFamily;
    //   /*
    //   sulphur
    //    */
    //     fontFamily = GoogleFonts.textMeOne()
    //         .fontFamily;
    //
    //     // GoogleFonts.novaSlimTextTheme()
    // }

    return _theme1();

  }


  XTheme _theme2() => XTheme(
    // secondary: Color(hexColor("d0d2d3")),
    gradientOne: Color(hexColor('#01667a')), // Colors.black
    gradientTwo: Color(hexColor('#41c7d1')), // 262626, 1f1f1f
    // gradientTwo: Color(hexColor('#1a1a1a')),
    // frontBackgroundColor: Color(hexColor('#fcfcfc')),
    // frontBackgroundColor: Colors.white,
    // backBackgroundColor: Color(hexColor('#f0f0f0')), // ededed, f0f0f0, f7f7f7, e8e8e8,
    // onPrimarySolidContrast: Colors.white,
    // onAccentSolidContrast: Colors.white,
    warningColor: Colors.amber,
    // backColorOnBackground: Color(hexColor('#dbdbdb')), // dbdbdb , bdbdbd
    themeData: ThemeData(
      // primaryColor: Color(hexColor('#262626')),
      primaryColor: Color(hexColor('#41c7d1')), // 41c7d1, 55d0d9
      accentColor: Color(hexColor('#ffe11c')), // f2de46, ffe940, ffe100, fae81e, ffe11c
      scaffoldBackgroundColor: Color(hexColor('#fafafa')),
      backgroundColor: Color(hexColor('#fafafa')), // ebebeb, fafafa, f5f5f5, f7f7f7
      // accentColor: Colors.amber,
      // red: de5252, c43535, de5273, 8f004f


      errorColor: Colors.red,
      // fontFamily: fontFamily,
      textTheme: GoogleFonts.bellotaTextTextTheme(),
      // textTheme: GoogleFonts.textMeOneTextTheme(),
      // textTheme: GoogleFonts.imprimaTextTheme(),
      // textTheme: GoogleFonts.kiteOneTextTheme(),
      // textTheme: TextTheme().apply(
      //   bodyColor: Colors.black,
      //   displayColor: Colors.black
      // ),
      // textTheme: TextTheme(
      //   bodyText1:  textStyles.bodyText1,
      //   bodyText2:  textStyles.bodyText2,
      //   button:     textStyles.button,
      //   caption:    textStyles.caption,
      //   headline1:  textStyles.headline1,
      //   headline2:  textStyles.headline2,
      //   headline3:  textStyles.headline3,
      //   headline4:  textStyles.headline4,
      //   headline5:  textStyles.headline5,
      //   headline6:  textStyles.headline6,
      //   overline:   textStyles.overline,
      //   subtitle1:  textStyles.subtitle1,
      //   subtitle2:  textStyles.subtitle2,
      // ),

    ),

  );

  XTheme _theme1() => XTheme(
    // secondary: Color(hexColor("d0d2d3")),
    warningColor: Colors.amber,
    gradientOne: Colors.black, // Colors.black
    gradientTwo: Color(hexColor('#262626')), // 262626, 1f1f1f
    // frontBackgroundColor: Colors.red,
    // backBackgroundColor: Color(hexColor('#9e2b2b')), // ededed, f7f7f7, e6e6e6
    // onPrimarySolidContrast: Colors.white,
    // onAccentSolidContrast: Colors.white,
    // backColorOnBackground: Color(hexColor('#bdbdbd')),
    themeData: _buildOneTheme(),
  );

  int hexColor(String hexColor) {
    return int.parse("0xFF" + hexColor.replaceAll('#', ''));
  }

}






ThemeData _buildOneTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _colorScheme,

    accentColor: palette1.accent, // palette1.darkerPrimary

    primaryColor: palette1.primary,
    buttonColor: palette1.primary,
    backgroundColor: palette1.background,


    scaffoldBackgroundColor: palette1.scaffold,
    cardColor: palette1.surface,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: palette1.primary,
      // cursorColor: ,
      // selectionHandleColor:
    ), // TODO
    errorColor: palette1.error,
    buttonTheme: ButtonThemeData(
      colorScheme: _colorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: palette1.darkerPrimary);
}





TextTheme _buildTextTheme(TextTheme base) {
  assert(base.headline5 != null);
  assert(base.headline6 != null);
  assert(base.caption != null);
  assert(base.bodyText2 != null);
  assert(base.bodyText1 != null);
  assert(base.subtitle1 != null);
  assert(base.headline4 != null);
  assert(base.button != null);



  return
    // base
    GoogleFonts.poppinsTextTheme()
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: oneDefaultLetterSpacing,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18,
          letterSpacing: oneDefaultLetterSpacing,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: oneDefaultLetterSpacing,
        ),
        bodyText2: base.bodyText2!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: oneDefaultLetterSpacing,
        ),
        bodyText1: base.bodyText1!.copyWith(
          letterSpacing: oneDefaultLetterSpacing,
        ),
        subtitle1: base.subtitle1!.copyWith(
          letterSpacing: oneDefaultLetterSpacing,
        ),
        headline4: base.headline4!.copyWith(
          letterSpacing: oneDefaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: oneDefaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: palette1.darkerPrimary,
        bodyColor: palette1.darkerPrimary,
      );
}




final ColorScheme _colorScheme = ColorScheme(
  primary: palette1.primary,
  onPrimary: palette1.onPrimary, // palette1.darkerPrimary,
  primaryVariant: palette1.darkerPrimary,//shrineBrown900,

  secondary: palette1.accent,
  onSecondary: palette1.darkerPrimary,
  secondaryVariant: palette1.darkerAccent, // palette1.darkerPrimary

  error: palette1.error,
  onError: palette1.onError,

  surface: palette1.surface,
  onSurface: palette1.darkerPrimary,

  background: palette1.background,
  onBackground: palette1.darkerPrimary,



  brightness: Brightness.light,
);



final XColorPalette palette1 = XColorPalette(

    primary: const Color(0xFF2B2945),
    onPrimary: oneWhite,
    darkerPrimary: oneDarkBlue,

    accent: const Color(0xFFFCC603),
    onAccent: oneLightGreen,
    darkerAccent: const Color(0xFF211900),

    scaffold: const Color(0XFFFAFAFA),
    onScaffold: oneDarkBlue,

    background: const Color(0XFFF5F5F5),
    onBackground: oneDarkBlue,

    surface: oneWhite,
    onSurface: oneDarkBlue,

    gradientOne: const Color(0xFFFEEAE6),
    gradientTwo: const Color(0xFFFEEAE6),
    secondary: const Color(0xFFFEEAE6),
    backColorOnBackground: const Color(0xFFFEEAE6),
    onAccentSolidContrast: const Color(0xFFFEEAE6),
    onPrimarySolidContrast: const Color(0xFFFEEAE6),
    backBackgroundColor: const Color(0xFFFEEAE6),
    frontBackgroundColor: const Color(0xFFFEEAE6),

    error: const Color(0xFFC5032B),
    onError: oneWhite,
    warning: const Color(0xFFFEEAE6),
);


int hexColor(String hexColor) {
  return int.parse("0xFF" + hexColor.replaceAll('#', ''));
}



class XTheme{

  final ThemeData themeData;
  final Color gradientOne;
  final Color gradientTwo;
  // final Color secondary;
  // final Color onPrimarySolidContrast;
  // final Color onAccentSolidContrast;
  // final Color backColorOnBackground;
  // final Color frontBackgroundColor;
  // final Color backBackgroundColor;
  final Color warningColor;


  XTheme({
    required this.themeData,
    required this.gradientOne,
    required this.gradientTwo,
    // required this.secondary,
    // required this.backColorOnBackground,
    // required this.onAccentSolidContrast,
    // required this.onPrimarySolidContrast,
    // required this.backBackgroundColor,
    // required this.frontBackgroundColor,
    required this.warningColor,
  });
}


class XColorPalette{

  final Color primary;
  final Color onPrimary;
  final Color darkerPrimary;

  final Color accent;
  final Color onAccent;
  final Color darkerAccent;

  final Color surface;
  final Color onSurface;

  final Color scaffold;
  final Color onScaffold;

  final Color background;
  final Color onBackground;

  final Color error;
  final Color onError;
  final Color warning;


  final Color gradientOne;
  final Color gradientTwo;
  final Color secondary;
  final Color onPrimarySolidContrast;
  final Color onAccentSolidContrast;
  final Color backColorOnBackground;
  final Color frontBackgroundColor;
  final Color backBackgroundColor;




  XColorPalette({
    required this.primary,
    required this.onPrimary,
    required this.darkerPrimary,

    required this.accent,
    required this.onAccent,
    required this.darkerAccent,

    required this.background,
    required this.onBackground,

    required this.surface,
    required this.onSurface,

    required this.scaffold,
    required this.onScaffold,

    required this.gradientOne,
    required this.gradientTwo,
    required this.secondary,
    required this.backColorOnBackground,
    required this.onAccentSolidContrast,
    required this.onPrimarySolidContrast,
    required this.backBackgroundColor,
    required this.frontBackgroundColor,

    required this.error,
    required this.onError,

    required this.warning,
  });
}


// theme
const Color oneWhite = Colors.white; //const Color(0xFFFAFAFF);
const Color oneDarkBlue = const Color(0xFF181725);
const Color oneLightGreen = const Color(0xFFFFF8E0);
const oneDefaultLetterSpacing = 0.03;



// const Color shrinePink50 = Color(0xFFFEEAE6);
// const Color shrinePink100 = Color(0xFFFEDBD0);
// const Color shrinePink300 = Color(0xFFFBB8AC);
// const Color shrinePink400 = Color(0xFFEAA4A4);
// const Color shrineBrown900 = Color(0xFF442B2D);
// const Color shrineBrown600 = Color(0xFF7D4F52);
// const Color shrineErrorRed = Color(0xFFC5032B);
// const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
// const Color shrineBackgroundWhite = Colors.white;
