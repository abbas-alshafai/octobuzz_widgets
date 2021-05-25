import 'package:engine_utils/utils/string_utils.dart';

import 'x_text_form_field.dart';
import 'package:flutter/material.dart';


class XEmailInput extends XTextFormField{

  final String hintText;
  final String errText;

  XEmailInput({
    ValueChanged<String>? onChanged,
    FormFieldSetter? onSaved,
    String? initialValue,
    required this.errText,
    required this.hintText
  })
  : super(
      onChanged: onChanged,
      onSaved: onSaved,
      obscureText: false,
      maxLines: 1,
      initialValue: initialValue,
    hintText: hintText,
      keyboardType: TextInputType.emailAddress,
      validator: (String? email) {
        if(StringUtils.instance.isBlank(email) ||
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(email!) )
          return errText;

        return null;
      } ,
      
  );


}
