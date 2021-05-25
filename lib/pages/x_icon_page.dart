import 'package:flutter/material.dart';
import '../constants/x_icons.dart';

class XIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Wrap(
        children: [
          XIcons.account,
          XIcons.add,
          XIcons.save,
          XIcons.addCircleOutline,
          XIcons.camera,
          XIcons.done,
          XIcons.attachFile,
          XIcons.home,
          XIcons.keyboard,
          XIcons.store,
          XIcons.location,
          XIcons.signOut,
          XIcons.settings,
          XIcons.back,
          XIcons.forward,
          XIcons.pos,
          XIcons.down_arrow,
          XIcons.up_arrow,
          XIcons.cart,
          XIcons.order,
          XIcons.delivery,
          XIcons.language,
          XIcons.coupon,
          XIcons.filter,
          XIcons.bookmark,
          XIcons.heart,
          XIcons.star,
          XIcons.sales,
          XIcons.employee,
          XIcons.menu,
          XIcons.assistant,
          XIcons.wallet,
          XIcons.credit_card,
          XIcons.search,
          XIcons.category,
          XIcons.product,
          XIcons.upArrow,
          XIcons.myLocation,
          XIcons.geoLocation,
          XIcons.nav,
          XIcons.question_outline,
          XIcons.checkbox,
          XIcons.blankCheckbox,
          XIcons.indeterminateCheckbox,
          XIcons.x,
          XIcons.expand,
          XIcons.option_group,
          XIcons.info,
          XIcons.info_outline,
          XIcons.error,
          XIcons.errorOutline,
          XIcons.time,
          XIcons.barcode,
          XIcons.items,
          XIcons.operating_hours,
          XIcons.clear,
          XIcons.cancel,
          XIcons.edit,
          XIcons.skipNext,
          XIcons.skipPrevious,
        ].map((e) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(e),
        )).toList(),
      ),
    );
  }
}