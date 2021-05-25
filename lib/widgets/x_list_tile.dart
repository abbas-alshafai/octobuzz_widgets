import 'package:engine_utils/utils/string_utils.dart';
import 'package:engine_widgets/widgets/eng_list_tile.dart';

import 'x_text.dart';
import 'package:flutter/material.dart';

class XListTile extends StatelessWidget {

  final Widget? title;
  final Widget? subtitle;
  final String? titleText;
  final String? subtitleText;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? trailing;
  final String? trailingText;

  const XListTile({
    Key? key,
    this.title,
    this.subtitle,
    this.onTap,
    this.leading,
    this.trailing,
    this.titleText,
    this.subtitleText,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return EngListTile(
      
      leading: leading,
      trailing: trailing ?? (
        StringUtils.instance.isNotBlank(trailingText)
            ? XText(trailingText!)
            : SizedBox.shrink()
      ),
      title: StringUtils.instance.isNotBlank(titleText)
          ? XText(titleText!)
          : title,
      subtitle: StringUtils.instance.isNotBlank(subtitleText)
          ? XText(subtitleText!)
          : subtitle,
      onTap: onTap,
    );
  }
}
