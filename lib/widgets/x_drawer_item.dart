
import 'package:engine_widgets/widgets/eng_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'x_text.dart';

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
    return EngDrawerItem(
      icon: icon,
      iconColor: iconColor ?? Colors.white,
      title: XText(title,
        color: textColor ?? Colors.white,
        style: GoogleFonts.comfortaa( // TODO
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            textStyle: Theme.of(context).textTheme.headline6
        )
      ),
      onTap: onTap,
    );
  }
}
