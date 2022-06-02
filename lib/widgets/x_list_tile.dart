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
    return ListTile(
      leading: leading,
      trailing: trailing,
      title: titleText == null ? null : Text(titleText!),
      subtitle: subtitleText == null ? null : Text(subtitleText!),
      onTap: onTap,
    );
  }
}
