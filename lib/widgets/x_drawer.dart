import '../themes/styles.dart';
import 'package:flutter/material.dart';

class XDrawer extends StatelessWidget {

  final List<Widget> drawerItems;

  const XDrawer({Key? key, required this.drawerItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double? width = MediaQuery.of(context).size.width * 2 / 3;
    if(width > 325)
      width = 325;

    if(width < 235)
      width = 235;


    return SafeArea(
        child: Container(
          decoration: containerGradient,
          width: width,
          child: ListView(
            children: drawerItems,
          )
        )
      );
  }
}


/*
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
//                Color(0xff92ffc0),
//                Color(0Xff002661),

                ThemeFactory.instance.getTheme().themeData.accentColor,
                ThemeFactory.instance.getTheme().themeData.primaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
 */
