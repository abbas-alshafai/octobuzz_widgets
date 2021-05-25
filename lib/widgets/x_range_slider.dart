import '../themes/measures.dart';

import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XRangeSlider extends StatelessWidget {

  final double min;
  final double max;
  final RangeValues values;
  final ValueChanged onChanged;

  const XRangeSlider({
    Key? key,
    required this.min,
    required this.max,
    required this.values,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RangeSlider(
      values: values,
      // divisions: 1,
      min: min,
      max: max,
      // divisions: 1,
      activeColor: ThemeFactory.instance.getTheme().themeData.primaryColor,
      // divisions: 1,
      inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(OpacityRatios.normal),

      labels: RangeLabels(
        values.start.round().toString(),
        values.end.round().toString(),
      ),
      onChanged: onChanged
    );

  }
}
