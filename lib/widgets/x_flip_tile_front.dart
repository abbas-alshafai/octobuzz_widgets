import 'package:engine_utils/utils/string_utils.dart';

import '../utils/utils.dart';

import '../themes/measures.dart';
import '../widgets/x_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class XFlipTileFront extends StatelessWidget {
  const XFlipTileFront({
      Key? key,
      this.color,
      this.icon,
      this.textColor,
      this.image,
      required this.title,
      this.imageLocation,
      this.onTap
  }) : super(key: key);

  final Color? color;
  final IconData? icon;
  final Color? textColor;
  final Image? image;
  final String title;
  final String? imageLocation;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon == null
              ? SizedBox.shrink()
              : Icon(
                  icon,
                  size: dashboardIconSize,
                  color: Colors.white, // TODO - move color to theme
                ),
          getPic(),

          SizedBox(height: vSpace,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: XText(
              title,
              style: GoogleFonts.comfortaa(
                color: textColor ?? Colors.white, // TODO - move color to theme
                fontSize: dashboardFontSize,
                height: 1.2,
//              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget getPic() {
    return Utils.shrinkIfEmpty(
      primaryWidget: image,
      text: imageLocation,
      textWidget: Image.asset(imageLocation ?? StringUtils.empty)
    );
  }
}
