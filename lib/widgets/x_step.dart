import 'package:engine_widgets/widgets/eng_step.dart';
import '../utils/utils.dart';
import 'package:flutter/material.dart';

class XStep extends EngStep {

  final List<String>? errorMessages; // TODO is this used?
  String? titleText;
  String? subtitleText;

  XStep({
    this.titleText,
    required Widget content,
    Widget? title,
    bool isActive = false,
    Widget? subtitle,
    this.subtitleText,
    this.errorMessages
  }) : super(
    content: content,
    isActive: isActive,
    title: Utils.shrinkIfEmpty(
      primaryWidget: title,
      text: titleText
    ),
    subtitle: Utils.shrinkIfEmpty(
      primaryWidget: subtitle,
      text: subtitleText
    )
  );

  static XStep copy(XStep step, {bool isActive = false}){
    return XStep(
      isActive: isActive,
      content: step.content,
      title: step.title,
      errorMessages: step.errorMessages,
      subtitle: step.subtitle,
      subtitleText: step.subtitleText,
      titleText: step.titleText,
    );
  }
}
