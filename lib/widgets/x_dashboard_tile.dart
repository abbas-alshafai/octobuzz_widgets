
import 'package:buzz_utils/buzz_utils.dart';

import '../utils/utils.dart';

import '../themes/measures.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';


class XDashboardTile extends StatelessWidget{
  const XDashboardTile({
    this.color,
    this.icon,
    required this.title,
    this.textColor,
    this.image,
    this.imageLocation,
    this.onTap,
    Key? key
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

    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(

              colors: <Color>[
                Color(0xFF762864),
                ThemeFactory.instance.getTheme().themeData.primaryColor,
                Color(0xFF1E1726),
              ],
//              stops: [0.2, 0.5],
              center: Alignment(0.0, -0.24),
//              focal: Alignment(-0.1, 0.6),
//              focalRadius: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon == null ? SizedBox.shrink() : Icon(
              icon,
              size: 44,
              color: Colors.white,
            ),

            _getPic(),

            SizedBox(
              height: 24,
            ),

            Text(
              title,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: dashboardFontSize,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )

      ),
    );
  }


  Widget _getPic(){
    return Utils.shrinkIfEmpty(
      primaryWidget: image,
      text: imageLocation,
      textWidget: Image.asset(imageLocation ?? StringUtils.empty)
    );
  }
}
