// import 'package:fluttertoast/fluttertoast.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:octobuzz_widgets/themes/theme_factory.dart';

class XToast {
  static showToast({String? msg, bool isError = false}) {
    // Fluttertoast.showToast(
    //   msg: msg ?? 'Coming Soon', // TODO remove hard coding
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.BOTTOM,
    //   timeInSecForIosWeb: 1,
    //   backgroundColor: isError
    //       ? ThemeFactory.instance.getTheme().themeData.errorColor
    //       : ThemeFactory.instance.getTheme().themeData.accentColor,
    //   textColor:
    //   ThemeFactory.instance.getTheme().themeData.colorScheme.onPrimary,
    //   fontSize: 12.0, // TODO move to measures file
    // );

    Fluttertoast.showToast(
      // TODO remove coming soon text below
      msg: msg ?? 'Coming Soon',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: isError
          ? ThemeFactory.instance.getTheme().themeData.colorScheme.error
          : ThemeFactory.instance.getTheme().themeData.colorScheme.primary,
      textColor: isError
          ? ThemeFactory.instance.getTheme().themeData.colorScheme.onError
          : ThemeFactory.instance.getTheme().themeData.colorScheme.onPrimary,
      fontSize: 16.0, // TODO move to style file
    );
  }
}
