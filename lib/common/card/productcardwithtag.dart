import 'package:evaly/common/card/cardlogobanner.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/common/image/productimgwithtag.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductCardWithTag extends StatelessWidget {
  const ProductCardWithTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductimgWithTag(),
        5.heightBox,
        const MultilineTitlewithverification(
          title: 'hello its me',
          size: 14,
          isboled: false,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.heightBox,
            const ProducPrice(
              price: '5000',
              reduced: true,
              newprice: '1000',
            ),
          ],
        ).paddingOnly(left: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.heightBox,
            "In Stock".text.gray500.sm.make(),
            const RatingwithTotalrates(rate: 4, totalrated: '20')
          ],
        ).paddingOnly(left: 8),
        5.heightBox
      ],
    ).box.width(160).white.roundedSM.make();
  }
}