import 'package:buzz_utils/buzz_utils.dart';

import '../themes/measures.dart';

import 'package:flutter/material.dart';

import 'x_container_padding.dart';
import 'x_main_screen_content.dart';

class XCenterMsg extends StatelessWidget {

  final String? msg;
  final Widget? actionMsg;
  final Widget? actionWidget;
  final Widget? imageWidget;
  final Color? backgroundColor;

  const XCenterMsg({
    Key? key,
    this.msg,
    this.actionMsg,
    this.actionWidget,
    this.imageWidget,
    this.backgroundColor
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> contents = [];

    if (imageWidget != null)
      contents.add(XMainScreenContent(child: imageWidget!));

    contents.add(XMainScreenContent(
        child: Text(
          msg ?? StringUtils.empty,
          // style: centerLargeText,
          style: Theme
              .of(context)
              .textTheme
              .headline5,
          textAlign: TextAlign.center,
          maxLines: 5,
        )
    ),);

    if (actionMsg != null || actionWidget != null) {
      contents.add(const SizedBox(
        height: vDoubleSpace,
      ));
      contents.add(actionMsg ?? SizedBox());
      contents.add(actionWidget ?? SizedBox());
    }

    return Container(
      padding: XContainerPadding.build(),
      color: backgroundColor,
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          direction: Axis.vertical,
          spacing: 5,
          children: contents,
        ),
      ),
    );
  }
}

