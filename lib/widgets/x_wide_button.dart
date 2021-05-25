import 'package:flutter/material.dart';
import '../themes/measures.dart';

class XWideButton extends StatelessWidget {

  final Widget child;

  const XWideButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(child: child, width: double.infinity,),
      constraints: BoxConstraints(
        maxWidth: SizeUtils.resize(
          maxWidth: MediaQuery.of(context).size.width,
          size: wideButtonMaxWidth
        ),
      ),
    );
  }
}
