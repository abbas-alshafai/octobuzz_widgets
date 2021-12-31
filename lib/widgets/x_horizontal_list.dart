import 'package:engine_utils/utils/list_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_section.dart';
import '../themes/measures.dart';

class XHorizontalListSection extends StatelessWidget {

  final String? titleText;
  final double? height;
  final double moreHeight;
  final double? separationPadding;
  final List<Widget>? items;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final bool hasPadding;
  final EdgeInsetsGeometry? titlePadding;
  final Widget? titleTrailing;
  final Widget? title;

  const XHorizontalListSection({
    Key? key,
    this.titleText,
    this.title,
    this.titleTrailing,
    this.titlePadding,
    this.height = 220,
    this.items,
    this.color,
    this.padding,
    this.hasPadding = true,
    this.moreHeight = 0,
    this.separationPadding
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(ListUtils.instance.isEmpty(items))
      return SizedBox.shrink();

    if(items!.length == 1)
      return XSection(
        title: title,
        titleText: titleText,
        titleTrailing: titleTrailing,
        titlePadding: titlePadding,
        color: color,
        height: height,
        child: items![0],
      );


    return XSection(
      title: title,
      titleText: titleText,
      titleTrailing: titleTrailing,
      titlePadding: titlePadding,
      hasPadding: false,
      color: color,
      height: height,
      padding: padding ?? ( hasPadding
          ? EdgeInsets.fromLTRB(16, 24 + moreHeight, 16, 24) // TODO
          : null
      ),
      child: Flexible(
        child: ListView.separated(
          separatorBuilder: (context,index) =>
              SizedBox(width: separationPadding ?? hSpace),
          scrollDirection: Axis.horizontal,
          itemCount: items!.length,
          itemBuilder: (_,index)=> items![index],
        ),
      ),
    );
  }
}
