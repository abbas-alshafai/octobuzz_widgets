
import '../widgets/x_appbar.dart';
import '../widgets/x_loading.dart';
import '../widgets/x_scaffold.dart';
import 'package:flutter/material.dart';

class XLoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      appBar: XAppBar(
        // TODO remove below - no need
        titleText: 'Loading',
      ),
      body: Center(
        child: XLoading(),
      ),
    );
  }
}
