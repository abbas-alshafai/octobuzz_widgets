import 'package:fluttertoast/fluttertoast.dart';

import '../themes/theme_factory.dart';

class XFunctions{

  static showToast({String? msg, bool isError = false}){
    Fluttertoast.showToast(
      msg: msg ?? 'Coming Soon',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: isError
          ? ThemeFactory.instance.getTheme().themeData.errorColor
          : ThemeFactory.instance.getTheme().themeData.accentColor,
      textColor: ThemeFactory.instance.getTheme()
          .themeData.colorScheme.onPrimary,
      fontSize: 12.0,
    );
  }

}
