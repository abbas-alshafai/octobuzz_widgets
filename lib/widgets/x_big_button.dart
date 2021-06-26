import 'package:engine_utils/utils/string_utils.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

import 'x_bottom_container.dart';
import 'x_loading.dart';
import 'x_text.dart';

class XBigButton extends StatelessWidget {

  final String? text;
  final VoidCallback onPressed;
  final Widget? child;
  final double? height;
  final Color? backgroundColor;
  final bool isRoundCorners;
  final bool isLoading;

  

  const XBigButton({
    Key? key,
    this.child,
    this.text,
    this.height,
    this.backgroundColor,
    required this.onPressed,
    this.isRoundCorners = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading ? XLoading() : XBottomContainer(
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
          child: Utils.shrinkIfEmpty(
            primaryWidget: child,
            text: text,
            textWidget: XText( text ?? StringUtils.empty,
                color: Theme.of(context).colorScheme.onPrimary
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );

  }
}
