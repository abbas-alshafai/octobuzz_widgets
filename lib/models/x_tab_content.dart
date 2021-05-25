import 'dart:ui';

import 'package:engine_widgets/models/eng_tab_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon_data.dart';

class XTabContent extends EngTabContent{
  XTabContent({required String title, required IconData icon, Color? color,
    required Widget contents}) :
        super(title: title, icon: icon, color: color, contents: contents);
}
