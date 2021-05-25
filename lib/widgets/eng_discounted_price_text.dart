//import 'package:decimal/decimal.dart';
//import '../themes/theme_factory.dart';
//
//import '../utils/widgets_utils.dart';
//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//
//import 'x_text.dart';
//
//class EngDiscountedPriceText extends StatelessWidget {
//  final double price;
//  final double discount;
//
//  EngDiscountedPriceText({this.price, this.discount, Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    bool isDiscounted = Utils.instance
//        .isDiscounted(price: price, discount: discount);
//
//    Diagnosticable style = isDiscounted
//        ? TextStyle(
//            fontWeight: FontWeight.bold,
//            color: ThemeFactory.instance.getTheme().theme.errorColor,
//          )
//        : TextStyle(fontWeight: FontWeight.bold);
//
//    Decimal finalPrice = isDiscounted
//        ? Decimal.parse(price.toString()) - Decimal.parse(discount.toString())
//        : Decimal.parse(price.toString());
//
//    return XText(
//      Utils.instance.formatAmount(double.parse(finalPrice.toString())),
//      style: style,
//    );
//  }
//}
