import 'package:fluttertoast/fluttertoast.dart';

import 'package:octobuzz_widgets/themes/theme_factory.dart';

class XToast {
  static showToast({String? msg, bool isError = false}) {
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
