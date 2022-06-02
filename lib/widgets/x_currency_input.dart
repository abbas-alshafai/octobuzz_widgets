import 'package:buzz_utils/buzz_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_text_form_field.dart';


class XCurrencyInput extends StatelessWidget {

  final bool isMandatory;
  final bool isNegativeValuePossible;
  final bool isSuffixCurrency;
  final String? currencyText;
  final Widget? currency;
  final FormFieldValidator? validator;
  final String? errText;
  final Widget? inputField;

  const XCurrencyInput({
    Key? key,
    this.currencyText,
    this.currency,
    this.inputField,
    this.isMandatory = true,
    this.isNegativeValuePossible = false,
    this.isSuffixCurrency = false,
    this.validator,
    this.errText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    assert(StringUtils.instance.isNotBlank(currencyText) || currency != null);

    Widget _currency = currency ?? (
        StringUtils.instance.isBlank(currencyText)
            ? SizedBox.shrink()
            : Text(currencyText!)
    );

    Widget _input = inputField ?? XTextFormField(
      validator: validator ?? (
          !isMandatory
            ? null
            : (input) {
              assert(StringUtils.instance.isNotBlank(errText));

              if(StringUtils.instance.isBlank(input)) return errText;

              return null;
            }
          ),
    );

    return Row(
      children: [

        if(isSuffixCurrency)
          _currency,

        _input,

        if( ! isSuffixCurrency )
          _currency,

      ],
    );
  }
}
