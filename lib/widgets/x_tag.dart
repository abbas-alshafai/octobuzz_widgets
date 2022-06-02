import 'package:flutter/material.dart';
import '../utils/utils.dart';

class XTag extends StatelessWidget {

  final GestureTapCallback? onTap;
  final String? tagName;
  final double? width;
  final Widget? titleWidget;
  final double? padding;
  final Widget? tag;

  XTag({
    this.tagName,
    this.onTap,
    this.width,
    this.titleWidget,
    this.padding,
    this.tag
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 2.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width ?? 100.0,
          height: 50,
          child: ListTile(
            subtitle: Utils.shrinkIfEmpty(
              primaryWidget: titleWidget,
              text: tagName,
            ) ,
            title: tag ?? SizedBox(),
          ),
        ),
      ),
    );
  }
}

