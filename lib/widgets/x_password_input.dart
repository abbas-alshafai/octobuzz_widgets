import 'package:flutter/cupertino.dart';

import 'x_text_form_field.dart';

class XPasswordInput extends XTextFormField {

  final String? hintText;
  final String? errText;

  XPasswordInput({
    ValueChanged<String>? onChanged,
    FormFieldSetter<String>? onSaved,
    this.hintText,
    this.errText
  }) : super(
          onChanged: onChanged,
          onSaved: onSaved,
          obscureText: true,
          maxLines: 1,
          hintText: hintText,
          validator: (String? password) {
            if (password == null || password.isEmpty || password.length < 6)
              return errText;

            return null;
          },
        );
}
