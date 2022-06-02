import 'package:flutter/material.dart';

class XDrawerItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? textColor;

  XDrawerItem({
    this.icon,
    required this.title,
    this.onTap,
    Key? key,
    this.textColor,
    this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor,),
      title: Text(title, style: TextStyle().copyWith(color: textColor),),
      onTap: onTap,
    );
  }
}
