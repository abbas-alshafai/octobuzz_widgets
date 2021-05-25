import 'package:engine_utils/utils/string_utils.dart';
import 'x_text_form_field.dart';
import 'package:flutter/material.dart';


class XMandatoryInput extends XTextFormField{

  final String errText;

  XMandatoryInput({
    Key? key,
    required this.errText,
    String? hintText,
    ValueChanged<String>? onChanged,
    FormFieldSetter<String>? onSaved,
    TextInputType? keyboardType,
    int maxLines = 1,
    String? initialValue,
    FormFieldValidator<String>? validator,
    bool obscureText = false,
  })
  : super(
    key: key,
    onChanged: onChanged,
    onSaved: onSaved,
    obscureText: obscureText,
    initialValue: initialValue,
    maxLines: maxLines,
    keyboardType: keyboardType,
    hintText: hintText,
    validator: validator ?? (String? input) {
      assert(StringUtils.instance.isNotBlank(errText));

      if(StringUtils.instance.isBlank(input)) {
        return errText;
      }

      return null;
    },
  );


}
