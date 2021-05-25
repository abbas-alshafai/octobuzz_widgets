import 'package:flutter/material.dart';
import '../themes/theme_factory.dart';


class XMaterialApp extends StatelessWidget {

  final String appName;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final Locale locale;
  final Widget home; // TODO this might be removed and replaced with navigator or router param

  const XMaterialApp({
    Key? key,
    required this.appName,
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.locale,
    required this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,

      //------------------   Theme   ------------------
      // TODO do we need below if we have more than two themes
      theme: ThemeFactory.instance.getTheme().themeData,
      darkTheme: ThemeFactory.instance.getTheme().themeData,


      //------------------Translations------------------
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      locale: locale,


      home: home,
      // home: Navigator(
      //   pages: List.unmodifiable([]),
      //   onPopPage: _onPopPage,
      // ),

      // routes: Routes.getRoutes(), // TODO
      builder: (context, navigator){
        var lang = Localizations.localeOf(context).languageCode;
        return Theme(
          data: ThemeFactory.instance.getTheme(langCode: lang).themeData,
          child: navigator ?? home,
        );
      },
    );
  }
}
