import 'package:loading_indicator/loading_indicator.dart';

import 'package:flutter/material.dart';

const _size = 64.0; // TODO move to measurement class?

class XLoading extends StatelessWidget {

  final double? size;
  final Color? color;
  final bool isSmall;
  final String? msg;

  const XLoading(
      {Key? key, this.isSmall = false, this.size, this.color, this.msg,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size ?? (_size / (isSmall ? 2 : 1)),
            height: size ?? (_size / (isSmall ? 2 : 1)),
            child: LoadingIndicator(
                indicatorType: Indicator.ballClipRotate,
                color: Theme
                    .of(context)
                    .primaryColor
            ),
          ),
          // TODO
          SizedBox(height: 48,),
          if(msg != null)
            Text(msg!),
        ],
      ),
    );
  }
}

