import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/common/card/widget/shopinfo.dart';
import 'package:evaly/common/icon/codicon.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopNameAddressPriceButtons extends StatelessWidget {
  const ShopNameAddressPriceButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.heightBox,
          Row(
            children: [
              const Image(
                image: AssetImage(ImageCons.watch1),
                height: 50,
                width: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Revive For COD".text.bold.make(),
                  const CODIcon(),
                  const RatingwithTotalrates(rate: 4, totalrated: "200"),
                ],
              )
            ],
          ),
          20.heightBox,
          const ShopInfo(),
          const Divider(
            thickness: 0.5,
          ),
          const ProducPriceHorizontl(
            price: '200',
            reduced: false,
          ),
          10.heightBox,
          Row(
            children: [
              Flexible(
                child: CustomElevatedButton(
                  title: "Add to Cart",
                  textcolor: Vx.black,
                  onPressed: () {},
                  backgroundColor: Vx.gray200,
                ).box.height(40).make(),
              ),
              20.widthBox,
              Flexible(
                child: CustomElevatedButton(
                  title: "Buy Now",
                  onPressed: () {},
                ).box.height(40).make(),
              ),
            ],
          ),
          10.heightBox
        ],
      ),
    ).box.border(width: 0.1).roundedSM.p4.make();
  }
}