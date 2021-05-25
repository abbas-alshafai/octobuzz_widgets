import 'package:flutter/material.dart';

class XMainScreenContent extends StatelessWidget {

  final Widget? child;

  const XMainScreenContent({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: new BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 84),
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}
