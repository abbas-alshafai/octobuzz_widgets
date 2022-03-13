import 'package:engine_utils/utils/string_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../themes/measures.dart';
import '../widgets/x_container_padding.dart';
import '../widgets/x_text.dart';

import 'x_container.dart';
import 'x_row.dart';

class XSection extends StatelessWidget {
  final String? titleText;
  final Widget? title;
  final Widget? titleTrailing;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double spaceHeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? titlePadding;
  final bool hasSpace;
  final bool hasPadding;
  final String? noChildText;
  final bool isEmptyChild;

  const XSection({
    Key? key,
    this.titleText,
    this.title,
    this.child,
    this.color,
    this.height,
    this.textColor,
    this.titleTrailing,
    this.spaceHeight = 0,
    this.hasSpace = true,
    this.titlePadding,
    this.padding,
    this.hasPadding = true,
    this.noChildText,
    this.isEmptyChild = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _title = Utils.shrinkIfEmpty(
      primaryWidget: title,
      text: titleText,
      textWidget: XText(
        titleText ?? StringUtils.empty,
        style: Theme
            .of(context)
            .textTheme
            .subtitle1
            ?.copyWith(
          color: textColor,
        ),
      ),
    );

    return XContainer(
      color: color,
      height: height,
      padding: padding ??
          (hasPadding
              ? const EdgeInsets.symmetric(vertical: 16, horizontal: 16)
              : const EdgeInsets.symmetric(vertical: 0, horizontal: 0)), // TODO

      child: Column(
        children: [
          titlePadding == null
              ? XRow(
            bottomPreWidget: _title,
            bottomPostWidget: titleTrailing,
          )
              : Padding(
            padding: titlePadding!,
            child: XRow(
              bottomPreWidget: _title,
              bottomPostWidget: titleTrailing,
            ),
          ),

          if (!isEmptyChild && child != null && (hasSpace || spaceHeight > 0))
            SizedBox(height: spaceHeight > 0 ? spaceHeight : vSpace),
          if(!isEmptyChild && child != null)
            child!,

          if(isEmptyChild && noChildText != null)
            ...[
              SizedBox(height: spaceHeight > 0 ? spaceHeight : vSpace),
              Center(
                child: Text(
                  noChildText ?? '',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme
                      .of(context)
                      .colorScheme
                      .onSurface
                      .withOpacity(0.5)),
                ),
              ),
              // const SizedBox(height: vSpace),
            ]

        ],
      ),
    );
  }
}
