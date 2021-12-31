import 'package:engine_utils/utils/string_utils.dart';
import 'package:expandable/expandable.dart';
import '../themes/measures.dart';
import '../utils/utils.dart';
import '../constants/x_icons.dart';
import 'package:flutter/material.dart';

import 'x_row.dart';

class XStepInfo extends StatelessWidget {

  final String? msgText;
  final Widget? expandedWidget;
  final String? backText;
  final Widget? backWidget;
  final Widget? showMoreWidget;
  final bool onSolidColor;

  const XStepInfo({
    Key? key,
    this.showMoreWidget,
    this.msgText,
    this.expandedWidget,
    this.backText,
    this.backWidget,
    this.onSolidColor = false,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
              child: showMoreWidget ?? XRow(
                bottomPostWidget: Icon(XIcons.info_outline,
                color: onSolidColor // TODO use opacity
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.primary.withOpacity(OpacityRatios.normal),
                ),
              ),
            ),


            expanded: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16), // TODO move to measures file
              child: Column(
                  children: [
                    Utils.shrinkIfEmpty(
                      primaryWidget: expandedWidget,
                      text: msgText,
                      textWidget:
                      Text(msgText ?? StringUtils.empty, style: TextStyle().copyWith(
                        color: onSolidColor
                            ? Theme.of(context).colorScheme.onPrimary
                            : null
                      ),
                      ),
                    ),

                    ExpandableButton(
                      child: Utils.shrinkIfEmpty(
                        primaryWidget: backWidget,
                        text: backText,
                        textWidget: Text(backText ?? '', style: TextStyle().copyWith(
                            color: onSolidColor
                                ? Theme.of(context).colorScheme.onPrimary
                                : Theme.of(context).colorScheme.secondary
                        ),
                        )
                      )
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}



