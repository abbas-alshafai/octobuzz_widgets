import 'package:flutter/material.dart';

import 'x_step.dart';

class XStepper extends Stepper {

  XStepper({
    Key? key,
    required List<Step> steps,
    ScrollPhysics physics = const ClampingScrollPhysics(),
    StepperType type = StepperType.vertical,
    required int currentStep,
    required ValueChanged<int> onStepTapped,
    VoidCallback? onStepContinue,
    VoidCallback? onStepCancel,
    required ControlsWidgetBuilder controlsBuilder,
  }) : super(
    key: key,
    steps: steps,
    physics: physics,
    type: type,
    currentStep: currentStep,
    onStepTapped: onStepTapped,
    onStepContinue: onStepContinue,
    onStepCancel: onStepCancel,
    controlsBuilder: controlsBuilder,
  );
}

// TODO static?
List<XStep> buildSteps(List<XStep> source, int currentStep){
  return source.map((s) => XStep(
      isActive: currentStep >= source.indexOf(s),
      content: s.content,
      title: s.title,
      errorMessages: s.errorMessages
  )).toList();
}


