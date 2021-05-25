import 'package:engine_utils/utils/number_utils.dart';
import 'package:engine_utils/utils/string_utils.dart';

import 'package:flutter/material.dart';
import 'x_text_form_field.dart';

class XPhoneInput extends StatelessWidget {
  const XPhoneInput({
    Key? key,
    this.mask,
    this.isRequired = true,
    this.errText,
    this.hintText,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.initialValue,
    this.pattern,
  })
      : super(key: key);

  final String? mask;
  final bool isRequired;
  final String? errText;
  final String? hintText;
  final String? pattern;

  final ValueChanged? onChanged;
  final FormFieldSetter? onSaved;
  final FormFieldValidator? validator;
  final int maxLines = 1;
  final String? initialValue;


  @override
  Widget build(BuildContext context) {

    RegExp regExp;
    if(StringUtils.instance.isNotBlank(pattern))
      regExp = new RegExp(r''+pattern!);
    else
      regExp = new RegExp(r'');


    return XTextFormField(
          onChanged: onChanged,
          onSaved: onSaved,
          obscureText: false,
          initialValue: initialValue,
          maxLines: 1,
          keyboardType: TextInputType.phone,
          hintText: hintText,
          validator: isRequired
              ? validator ?? (phone) {
                  if ( StringUtils.instance.isBlank(phone) ||
                      ! NumberUtils.instance.isInteger(phone!.trim())) {
                    return errText;
                  }

                  if(StringUtils.instance.isBlank(pattern))
                    return null;

                  if(! regExp.hasMatch(phone))
                    return errText;

                  return null;
                }
              : null,
    );
  }
}
