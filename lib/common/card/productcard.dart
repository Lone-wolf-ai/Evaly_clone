import 'package:evaly/common/card/widget/productavailabilty.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/productsubtitle.dart';
import 'package:evaly/common/card/widget/producttitlewithverifiacation.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      this.isSemibold = true,
      this.reduced = false,
      this.isverified = true,
      this.applyrating = false});
  final String title;
  final String subtitle;
  final String amount;
  final String price;
  final String? newprice;
  final String imgurl;
  final bool isnetworkimg;
  final bool reduced;
  final bool isverified;
  final bool isSemibold;
  final bool applyrating;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Vx.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          (isnetworkimg)
              ? Image(
                  image: NetworkImage(imgurl),
                )
              : Image(
                  image: AssetImage(
                    imgurl,
                  ),
                  height: 80,
                  width: 80,
                  fit: BoxFit.contain,
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProducttitlewithVerification(
                  title: title,
                  isverified: isverified,
                  isSemibold: isSemibold,
                ),
                ProductSubtitle(title: subtitle),
                1.heightBox,
                ProducPrice(
                  price: price,
                  newprice: newprice,
                  reduced: reduced,
                ),
                2.heightBox,
                (applyrating)
                    ? const RatingwithTotalrates(rate: 4, totalrated: "20k",itemsize: 10,)
                    : ProductAbleabilty(amount: amount),
                4.heightBox
              ],
            ),
          ),
        ],
      ),
    ).onTap(()=>Get.to(()=>const ProductDetails()));
  }
}
