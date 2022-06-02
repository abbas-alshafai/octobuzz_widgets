import '../widgets/x_row.dart';
import 'package:flutter/material.dart';

class XScrollableForm extends StatelessWidget {

  const XScrollableForm({
    Key? key,
    this.padding,
    this.form,
    this.bottomActionBar,
    this.bottomPreWidget,
    this.bottomPostWidget,
    this.bottomCenterWidget,
    this.maxWidth,
  }) : super(key: key);

  final Form? form;
  final EdgeInsetsGeometry? padding;
  final Widget? bottomActionBar;
  final Widget? bottomPreWidget;
  final Widget? bottomPostWidget;
  final Widget? bottomCenterWidget;
  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    bool hasBottomActionBar = bottomActionBar != null;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: Column(
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            padding:
                padding ?? EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth ?? 500, // TODO
              ),
              child: form,
            ),
          )),
          hasBottomActionBar ? bottomActionBar : _getBottomRow(),
        ],
      ),
    );
  }

  _getBottomRow() {
    return XRow(
      bottomPreWidget: bottomPreWidget,
      bottomCenterWidget: bottomCenterWidget,
      bottomPostWidget: bottomPostWidget,
    );
  }
}
