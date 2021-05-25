import 'package:engine_utils/utils/string_utils.dart';
import 'package:expandable/expandable.dart';
import '../themes/measures.dart';
import '../utils/utils.dart';
import '../constants/x_icons.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

import 'x_row.dart';
import 'x_text.dart';

class XStepInfo extends StatelessWidget {

  final String? msgText;
  final Widget? expandedWidget;
  final String? backText;
  final Widget? backWidget;
  final bool onSolidColor;

  const XStepInfo({
    Key? key,
    this.msgText,
    this.expandedWidget,
    this.backText,
    this.backWidget,
    this.onSolidColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
              child: XRow(
                bottomPostWidget: Icon(XIcons.info_outline,
                color: onSolidColor // TODO use opacity
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onPrimary
                      .withOpacity(OpacityRatios.normal),
                ),
              ),
            ),


            expanded: Column(
                children: [
                  Utils.shrinkIfEmpty(
                    primaryWidget: expandedWidget,
                    text: msgText,
                    textWidget: XText(msgText ?? StringUtils.empty, color: onSolidColor
                        ? Theme.of(context).colorScheme.onPrimary
                        : null,
                    ),
                  ),

                  ExpandableButton(
                    child: Utils.shrinkIfEmpty(
                      primaryWidget: backWidget,
                      text: backText,
                      textWidget: XText(backText!,color: onSolidColor
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.primary,
                      )
                    )


                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}



