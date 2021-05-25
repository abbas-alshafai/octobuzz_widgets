import 'package:flutter/material.dart';

class XTextField extends TextField{

  XTextField({
    Key? key,
    InputDecoration? decoration,
    ValueChanged<String>? onChanged,
    TextInputType? keyboardType,
    TextEditingController? controller,
  })
    : super(
    key: key,
    onChanged: onChanged,
    decoration: decoration,
    keyboardType: keyboardType,
    controller: controller,
  );
}
