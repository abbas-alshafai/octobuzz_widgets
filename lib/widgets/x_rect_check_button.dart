import 'package:buzz_utils/buzz_utils.dart';

import '../utils/utils.dart';

import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XRectCheckButton extends StatelessWidget {
  const XRectCheckButton({
    Key? key,
    this.color,
    this.text,
    this.child,
    this.textWidget,
    this.selected = false,
    this.onPressed,
    required this.isValid,
  }) : super(key: key);

  final Color? color;
  final String? text;
  final Widget? child;
  final Widget? textWidget;
  final bool selected;
  final Function(bool)? onPressed;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed != null
          ? () {
              onPressed!(!selected);
            }
          : () {},
      child: Container(
        decoration: selected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: LinearGradient(
                  colors: isValid
                      ? [
                          ThemeFactory.instance.getTheme().gradientOne,
                          ThemeFactory.instance.getTheme().gradientTwo,
                        ]
                      : [
                          Color(hexColor("ce6a85")), // TODO
                          Color(hexColor("840032")),
//                Color(hexColor("ea526f"))
//                Color(hexColor("e71d36")),
//                Color(hexColor("ffd6e0")),
                        ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              )
            : BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.6)),
                // TODO confirm 0.6
                borderRadius: BorderRadius.circular(3),
              ),
        constraints: BoxConstraints(
            minHeight: 45, minWidth: 95, maxHeight: 65, maxWidth: 120),
        child: child ??
            Center(
              child: Utils.shrinkIfEmpty(
                primaryWidget: textWidget,
                text: text,
                textWidget: Text(
                  text ?? StringUtils.empty,
                  style: TextStyle().copyWith(
                    color: selected ? Colors.white : Colors.grey[400],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
