// import 'package:engine_utils/utils/number_utils.dart';
//
// import 'x_text.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// class PriceText extends StatelessWidget {
//
//   final double price;
//   final double discount;
//
//   PriceText({this.price, this.discount, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDiscounted = NumberUtils.instance
//         .isDiscounted(price: price, discount: discount);
//
//     Diagnosticable style = isDiscounted
//         ? TextStyle(fontWeight: FontWeight.bold, color: Colors.red)
//         : TextStyle(fontWeight: FontWeight.bold);
//
//     return Text(
//       NumberUtils.instance.formatAmount(price),
//       style: style,
//     );
//   }
// }
