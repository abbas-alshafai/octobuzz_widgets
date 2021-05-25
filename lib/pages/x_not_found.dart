import 'package:flutter/material.dart';
import '../widgets/x_center_msg.dart';
import '../widgets/x_scaffold.dart';

// TODO move to widgets
class XNotFoundPage extends StatelessWidget {

  static const String routeName = '/404';

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      body: XCenterMsg(
        msg: 'Page not found', // TODO
      ),
    );
  }
}
