import 'package:engine_widgets/models/eng_tile_info.dart';
import 'package:flutter/material.dart';

class XTileInfo extends EngTileInfo {
  XTileInfo({
    String? title,
    IconData? iconData,
    VoidCallback? onPressed,
  }) : super (iconData: iconData, title: title, onPressed: onPressed);
}
