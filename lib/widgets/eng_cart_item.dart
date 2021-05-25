//
//import '../configs/provider_config.dart';
//import '../services/app_state.dart';
//import 'package:provider/provider.dart';
//
//import '../components/x_list_tile.dart';
//
//import '../components/x_text.dart';
//import '../ui.constants/app_colors.dart';
//import '../models/product.dart';
//import '../utils/calculation_helper.dart';
//import '../utils/math_utils.dart';
//
//import 'package:flutter/material.dart';
//
//import 'x_list_tile.dart';
//
//class CartItem extends StatelessWidget {
//
//  final Product product;
//
//  const CartItem({this.product, Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//
//    double amount = CalculationHelper.calculatePrice(
//                      MatchUtils.subtract(product.price, product.discount),
//                      product.quantity);
//
//    AppState state = Provider.of<AppState>(context, listen: false);
//
//    return EngListTile(
//      leading: CircleAvatar(
//        radius: 25.0,
//        backgroundColor: AppColors.primary,
//      ),
//      title: EngText(
//        product.getName(state.lang),
//        overflow: TextOverflow.ellipsis,
//        maxLines: 1,
//      ),
//      subtitle: Row(
//        children: <Widget>[
//
//          EngText("\$${product.price} x ${product.quantity}"),
//
//          Expanded(
//            child: Container(
//              width: 100,
//            ),
//          ),
//
//          EngText("\$$amount"),
//        ],
//      ),
//    );
//  }
//}
