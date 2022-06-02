import 'package:buzz_utils/buzz_utils.dart';
import 'package:flutter/material.dart';

import 'x_text_form_field.dart';

class XReEnterPasswordInput extends XTextFormField{

  final String? errText;
  final String? hintText;
  // final String Function(String, String) validator;

  XReEnterPasswordInput({
    this.errText,
    this.hintText,
    ValueChanged<String>? onChanged,
    // required Function(String, String) validator,
    String? password
  }) :
  super(
        onChanged: onChanged,
        validator: (val) {
          if(StringUtils.instance.isBlank(password)
              || val == null || password?.compareTo(val) != 0)
            return errText;

          return null;
        },
        hintText: hintText,
        obscureText: true,
        maxLines: 1,
  );

  // @override
  // Widget build(BuildContext context) {
  //   final val = validator();
  //   return XTextFormField(
  //     hintText: hintText,
  //     validator: (val){
  //       if(StringUtils.instance.isBlank(password)
  //           || val == null || password?.compareTo(val) != 0)
  //         return errText;
  //
  //       return null;
  //     },
  //   );
  // }
}

