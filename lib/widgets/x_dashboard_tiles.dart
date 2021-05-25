import 'package:flutter/material.dart';

class XDashboardTiles extends StatelessWidget {
  final List<Widget> tiles;

  const XDashboardTiles({Key? key, required this.tiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // TODO remove this container?
      // color: ThemeFactory.instance.getTheme().themeData.backgroundColor, TODO
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 5,
          children: tiles,
        ),
      ),
    );
  }
}
