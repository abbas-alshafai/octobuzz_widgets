import 'package:flutter/material.dart';
import '../constants/x_icons.dart';
import '../utils/utils.dart';

class XAppMsgTile extends StatelessWidget {

  final String? title;
  final String? msg;
  final bool isActionRequired;
  final bool hasPadding;
  final EdgeInsets? padding;

  const XAppMsgTile({Key? key,
    this.msg,
    this.title,
    this.hasPadding = false,
    this.isActionRequired = false,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.amber,
      contentPadding: padding
          ?? EdgeInsets.symmetric(horizontal: (hasPadding ? 64 : 0)), // TODO think about mobile
      title: Utils.shrinkIfEmpty(
        text: title,
        textWidget: Text(title!),
      ),
      trailing: isActionRequired
          ? SizedBox.shrink()
          : IconButton(
        icon: Icon(XIcons.clear),
        onPressed: (){},
      ),
    );
  }
}


