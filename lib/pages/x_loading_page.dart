
import 'package:engine_utils/utils/string_utils.dart';
import 'package:octobuzz_widgets/themes/measures.dart';

import '../widgets/x_appbar.dart';
import '../widgets/x_loading.dart';
import '../widgets/x_scaffold.dart';
import 'package:flutter/material.dart';

class XLoadingPage extends StatelessWidget {
  final String? msg;

  const XLoadingPage({Key? key, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      appBar: XAppBar(
        // TODO remove below - no need
        titleText: 'Loading',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            XLoading(),
            SizedBox(height: vDoubleSpace,),
            if(StringUtils.instance.isNotBlank(msg))
              Text(msg!),
          ],
        ),
      ),
    );
  }
}
