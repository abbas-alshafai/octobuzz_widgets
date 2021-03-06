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
  final int? minLines;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final Key? key;

  XTextFormField({
    this.onChanged,
    this.controller,
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
    this.minLines,
    this.key
  });
//      : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle();

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      onSaved: onSaved,
      style: textStyle,



      decoration: InputDecoration(
        hintText: hintText,
        // fillColor: ThemeFactory.instance.getTheme().frontBackgroundColor,
        filled: true,
        border: border,
        errorBorder: errorBorder,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),

        // enabledBorder: OutlineInputBorder(
        //   borderSide:
        //   BorderSide(
        //     // color: ThemeFactory.instance.getTheme().secondary,
        //       width: outlineInputWidth
        //   ),
        // ),
        //
        // focusedBorder: focusedBorder ?? OutlineInputBorder(
        //   borderSide: BorderSide(
        //       color: ThemeFactory.instance.getTheme().themeData.primaryColor,
        //       width: outlineInputWidth
        //   ),
        // ),
      ),
      
    );
  }
}
