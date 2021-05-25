import 'package:engine_utils/utils/list_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_container.dart';

// TODO
// class XHorizontalTagList extends EngHorizontalTagList{
//   XHorizontalTagList({
//     double? height,
//     List<Widget> tags,
//     Color? color,
//   })
//   :
//   super(
//     height: height ?? 75.0,
//     tags: tags,
//     color: color,
//   );
// }

class XHorizontalTagList extends StatelessWidget {

  final double? height;
  final List<Widget>? tags;
  final Color? color;

  const XHorizontalTagList({Key? key, this.height, this.tags, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ListUtils.instance.isEmpty(tags))
      return SizedBox.shrink();

    return XContainer(
      height: height,
      color: color,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: tags!,
      ),
    );
  }
}


