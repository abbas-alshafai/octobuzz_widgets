import 'package:flutter/material.dart';

class XBottomContainer extends StatelessWidget {

  final String? text;
  final Widget? child;
  final double? height;
  final Color? backgroundColor;
  final bool isRoundCorners;



  const XBottomContainer({
    Key? key,
    this.child,
    this.text,
    this.height,
    this.backgroundColor,
    this.isRoundCorners = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.background,
        borderRadius: isRoundCorners ? BorderRadius.only(
          topLeft: const Radius.circular(12.0), // TODO
          topRight: const Radius.circular(12.0), // TODO
        ) : null, // TODO
      ),
      child: SizedBox(
        height: 56, // TODO
        width: double.infinity,
        child: child,
      ),
    );
  }
}
