import 'package:flutter/material.dart';
import 'x_dashboard_tile.dart';

class XDashboardGrid extends StatelessWidget {

  XDashboardGrid({
    Key? key,
    required this.tiles,
  }) : super(key: key);

  final List<XDashboardTile> tiles;


  @override
  Widget build(BuildContext context) {

    return GridView.count(

      crossAxisCount: 2,
      padding: EdgeInsets.only(left: 16, right: 16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.0,

      children: tiles.map((e) => Container(
        constraints: BoxConstraints(
          minHeight: 40.0,
          minWidth: 40.0,
          maxHeight: 100.0,
          maxWidth: 100.0,
        ),
        child: e,
      )).toList(),
    );
  }

}
