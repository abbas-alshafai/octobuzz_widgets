import 'package:flutter/material.dart';

class XBottomContainer extends StatelessWidget {
  final String? text;
  final Widget? child;
  final double? height;
  final Color? backgroundColor;
  final bool isRoundCorners;

  const XBottomContainer(
      {Key? key,
      this.child,
      this.text,
      this.height,
      this.backgroundColor,
      this.isRoundCorners = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // color: Theme.,
        borderRadius: isRoundCorners
            ? BorderRadius.all(const Radius.circular(12.0))
            : null, // TODO
      ),
      child: SizedBox(
        height: 56, // TODO
        width: double.infinity,
        child: child,
      ),
    );
  }
}
