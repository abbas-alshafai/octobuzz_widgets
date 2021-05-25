import 'package:engine_utils/utils/list_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_text_button.dart';

class XFlipTileBack extends StatelessWidget {
  const XFlipTileBack({
    Key? key,
    this.widgets,
    this.itemsInfo
  })
      : super(key: key);

  final List<Widget>? widgets;
  final List<XFlipTileBackItemInfo>? itemsInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // TODO - move to theme class
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widgets ??
            ( ListUtils.instance.isNotEmpty(itemsInfo)
                ? itemsInfo!.map((i) => XTextButton(
                      text: i.title,
                      onPressed: i.onPressed,
                    )).toList()
                : <Widget>[]
            ),
      ),
    );
  }
}

class XFlipTileBackItemInfo {
  final String title;
  final VoidCallback onPressed;

  XFlipTileBackItemInfo(this.title, this.onPressed);
}
