//import '../constants/constants.dart';
//import 'package:flutter/material.dart';
//
//
//import '../utils/widgets_utils.dart';
//
//
//import 'eng_discounted_price_text.dart';
//import 'eng_price_before_discount_text.dart';
//import 'x_text.dart';
//
//class AmountPriceLine extends StatelessWidget{
//
//  final double price;
//  final double discount;
//
//  AmountPriceLine({required this.price, this.discount = 0.0});
//
//  @override
//  Widget build(BuildContext context) {
//
//    bool isDiscounted = Utils.instance.isDiscounted(
//        price: price, discount: discount);
//
//    return isDiscounted ?
//    Row(
//      children: <Widget>[
//        EngDiscountedPriceText(
//          price: price,
//          discount: discount,
//        ),
//        Text(empty),
//        PriceBeforeDiscountText(
//          price: price,
//        ),
//      ],
//    )
//        :
//
//    EngDiscountedPriceText(
//      price: price,
//      discount: discount,
//    ) ;
//
//  }
//
//}
