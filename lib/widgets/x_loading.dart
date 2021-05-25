import 'package:loading_indicator/loading_indicator.dart';

import 'package:flutter/material.dart';


class XLoading extends StatelessWidget {

  final double? size;
  final Color? color;

  const XLoading({Key? key, this.size, this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Center(
        child: SizedBox(
          width: 64,
          height: 64,
          child: LoadingIndicator(
              indicatorType: Indicator.ballClipRotate,
              color: Theme.of(context).primaryColor
          ),
        )
    );
  }
}

