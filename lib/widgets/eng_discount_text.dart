//import '../utils/widgets_utils.dart';
//import 'package:flutter/material.dart';
//
//import 'x_text.dart';
//
//class EngDiscountText extends StatelessWidget {
//  final double price;
//  final double discount;
//
//  EngDiscountText({this.price, this.discount, Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    bool isNotDiscounted = Utils.instance.isNotDiscounted(price, discount);
//
//    return isNotDiscounted
//        ? null
//        : XText(
//            Utils.instance.formatAmount(discount),
//          );
//  }
//}
