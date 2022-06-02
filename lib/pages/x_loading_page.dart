import '../widgets/x_appbar.dart';
import '../widgets/x_loading.dart';
import '../widgets/x_scaffold.dart';
import 'package:flutter/material.dart';

class XLoadingPage extends StatelessWidget {
  final String? msg;
  final bool showAppBar;

  const XLoadingPage({Key? key, this.msg, this.showAppBar = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      appBar: !showAppBar ? null : XAppBar(
        // TODO remove below - no need
        titleText: msg == null ? 'Loading' : null,
      ),
      body: Center(
        child: XLoading(msg: msg),
      ),
    );
  }
}
