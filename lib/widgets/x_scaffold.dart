import 'package:flutter/material.dart';

class XScaffold extends Scaffold {

  XScaffold({
    PreferredSizeWidget? appBar,
    Widget? body,
    Color? backgroundColor,
    Widget? drawer,
    Widget? floatingActionButton,
    Widget? bottomNavigationBar,
    bool? extendBodyBehindAppBar,
    bool? resizeToAvoidBottomPadding,
    bool? resizeToAvoidBottomInset,
    Widget? bottomSheet,
    Key? key,
  }) : super(
    key: key,
    backgroundColor: backgroundColor,
    appBar: appBar,
    extendBodyBehindAppBar: extendBodyBehindAppBar ?? false, // TODO confirm this
    drawer: drawer,
    // body: body,
    body: body == null ? null : SafeArea(
        child: body
    ), // TODO
    resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? true,
    floatingActionButton: floatingActionButton,
    bottomNavigationBar: bottomNavigationBar,
  );
}
