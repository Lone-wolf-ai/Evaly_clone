import 'package:evaly/common/card/widget/productavailabilty.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/productsubtitle.dart';
import 'package:evaly/common/card/widget/producttitlewithverifiacation.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.amount,
      required this.price,
      this.newprice,
      required this.imgurl,
      required this.isnetworkimg,
      this.reduced = false,
      this.isverified = true});
  final String title;
  final String subtitle;
  final String amount;
  final String price;
  final String? newprice;
  final String imgurl;
  final bool isnetworkimg;
  final bool reduced;
  final bool isverified;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (isnetworkimg)
            ? Image(
                image: NetworkImage(imgurl),
              )
            : Image(
                image: AssetImage(imgurl),
              )
                .box
                .color(Vx.white)
                .height(140)
                .width(120)
                .p1 // Padding of 1 on all sides (optional)
                .roundedSM // Rounded corners (optional)
                .make(),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProducttitlewithVerification(
                title: title,
                isverified: isverified,
              ),
              ProductSubtitle(title: subtitle),
              2.heightBox,
              ProducPrice(
                price: price,
                newprice: newprice,
                reduced: reduced,
              ),
              4.heightBox,
              ProductAbleabilty(amount: amount),
              2.heightBox,
            ],
          ).box.height(100).make(),
        ),
      ],
    ).box.width(120).roundedSM.color(Vx.white).make();
  }
}
