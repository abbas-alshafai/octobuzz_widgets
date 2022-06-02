import 'package:buzz_utils/buzz_utils.dart';

import '../utils/utils.dart';
import '../themes/measures.dart';
import '../widgets/x_err_text.dart';
import 'package:flutter/material.dart';

class XErrVisibility extends StatelessWidget {
  const XErrVisibility(
      {Key? key, required this.hasError, this.error, this.errorText})
      : super(key: key);

  final bool hasError;
  final Widget? error;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: hasError,
      child: error ??
          Utils.shrinkIfEmpty(
            primaryWidget: error,
            text: errorText,
            textWidget: Column(
              children: <Widget>[
                SizedBox(height: vSpace),
                XErrText(errorText ?? StringUtils.empty),
              ],
            ),
          ),
    );
  }
}
