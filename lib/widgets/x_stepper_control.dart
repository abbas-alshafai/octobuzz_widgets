import '../widgets/x_row.dart';
import 'package:flutter/material.dart';

class XStepperControl {

  const XStepperControl({
    Key? key,
    required this.currentStep,
    required this.numOfSteps,
    this.previousWidget,
    this.nextWidget,
    required this.completeWidget
  });


  final int currentStep;
  final int numOfSteps;
  final Widget? previousWidget;
  final Widget? nextWidget;
  final Widget completeWidget;


  ControlsWidgetBuilder build(BuildContext context) {

    Padding(
      padding: const EdgeInsets.only(top: 16.0, ),
      child: XRow(
        bottomPreWidget: _getPre(),
        bottomPostWidget: _getPost(),
      ),

    );
    return (BuildContext context, {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0, ),
          child: XRow(
            bottomPreWidget: _getPre(),
            bottomPostWidget: _getPost(),
          ),
        );
    };
  }

  _getPre() {
    return currentStep == 0
        ? SizedBox.shrink()
        : previousWidget;
  }


  _getPost() {
    return currentStep == numOfSteps - 1
        ? completeWidget
        : nextWidget;
  }
}
