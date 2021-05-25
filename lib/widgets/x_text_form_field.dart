import 'package:engine_widgets/widgets/eng_text_form_field.dart';
// import 'package:google_fonts_arabic/fonts.dart';

import '../themes/measures.dart';
import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XTextFormField extends StatelessWidget {

  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final TextInputType? keyboardType;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? border;
  final String? initialValue;
  final int maxLines;
  final InputDecoration? inputDecoration;
  final Key? key;

  XTextFormField({
    this.onChanged,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.hintText,
    this.keyboardType,
    this.focusedBorder,
    this.errorBorder,
    this.border,
    this.initialValue,
    this.inputDecoration,
    this.maxLines = 1,
    this.key
  });
//      : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle();
    /*
    TODO
    TextStyle textStyle = TextStyle(
      fontFamily: ArabicFonts.Cairo,
      package: 'google_fonts_arabic',
    );

     */


    /*
    EngTextFormField(

      key: key,

      obscureText: obscureText,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onSaved: onSaved,

      style: textStyle,
      decoration: InputDecoration(
        hintText: hintText,
        // fillColor: ThemeFactory.instance.getTheme().frontBackgroundColor,
        filled: true,
        border: border,
        errorBorder: errorBorder,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),

        enabledBorder: OutlineInputBorder(
          borderSide:
            BorderSide(
              // color: ThemeFactory.instance.getTheme().secondary,
              width: outlineInputWidth
            ),
        ),

        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: BorderSide(
            color: ThemeFactory.instance.getTheme().themeData.primaryColor,
            width: outlineInputWidth
          ),
        ),
      ),
    );
    */

    return TextFormField(
      obscureText: obscureText,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onSaved: onSaved,
      style: textStyle,
      decoration: InputDecoration(
        hintText: hintText,
        // fillColor: ThemeFactory.instance.getTheme().frontBackgroundColor,
        filled: true,
        border: border,
        errorBorder: errorBorder,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),

        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(
            // color: ThemeFactory.instance.getTheme().secondary,
              width: outlineInputWidth
          ),
        ),

        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: BorderSide(
              color: ThemeFactory.instance.getTheme().themeData.primaryColor,
              width: outlineInputWidth
          ),
        ),
      ),
    );
  }
}
