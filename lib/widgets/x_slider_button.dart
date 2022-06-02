// import 'package:flutter/material.dart';
// import 'package:slide_to_act/slide_to_act.dart';
// import 'package:slide_to_confirm/slide_to_confirm.dart';
// import 'package:slider_button/slider_button.dart';
// import '../constants/x_icons.dart';
// import '../themes/theme_factory.dart';
//
// import 'x_text.dart';
//
// class XSliderButton extends StatelessWidget {
//
//   final Function onSlide;
//   final String text;
//
//   const XSliderButton({
//     Key? key,
//     this.onSlide,
//     this.text
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return opt2(context);
//   }
//
//   Widget opt1(BuildContext context) {
//     return ConfirmationSlider(
//       icon: XIcons.done,
//       text: text,
//       textStyle: Theme.of(context).textTheme.button,
//       onConfirmation: onSlide,
//       iconColor: Colors.white,
//       foregroundColor: Theme.of(context).accentColor,
//       backgroundColor: Theme.of(context).primaryColor,
//     );
//   }
//
//   Widget opt2(BuildContext context) {
//     return SlideAction(
//       text: text,
//       child: Text(text),
//       elevation: 0,
//       sliderButtonIconSize: 20,
//       onSubmit: onSlide,
//       outerColor: ThemeFactory.instance.getTheme().frontBackgroundColor,
//       innerColor: Theme.of(context).primaryColor,
//
//     );
//   }
//
//   Widget opt3(BuildContext context) {
//     return Center(child:
//       SliderButton(
//         action: onSlide,
//         label: Text(
//           "Slide to cancel Event",
//           style: Theme.of(context).textTheme.button,
//         ),
//         icon: Text(
//           "x",
//           style: Theme.of(context).textTheme.button,
//         ),
//
//         baseColor: Theme.of(context).accentColor,
//         highlightedColor: Theme.of(context).accentColor,
//         buttonColor: Theme.of(context).primaryColor,
//         backgroundColor: ThemeFactory.instance.getTheme().frontBackgroundColor,
//       )
//     );
//   }
// }
