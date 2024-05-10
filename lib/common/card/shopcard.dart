import 'package:evaly/common/card/widget/productsubtitle.dart';
import 'package:evaly/common/card/widget/producttitlewithverifiacation.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopCard extends StatelessWidget {
  const ShopCard(
      {super.key,
      required this.isnetworkimg,
      this.imgurl = '',
      this.title = '',
      this.subtitle = '',
      this.totalrated = '20k',
      this.rate = 1,
      this.isverified = true});
  final bool isnetworkimg;
  final String imgurl;
  final String title;
  final String subtitle;
  final String totalrated;
  final double rate;
  final bool isverified;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (isnetworkimg)
            ? Image(
                image: NetworkImage(imgurl),
              )
            : Image(
                image: AssetImage(imgurl),
              ).box.color(Vx.white).height(120).width(120).roundedSM.make(),
        if (title != '')
          ProducttitlewithVerification(
            title: title,
            isverified: isverified,
          ),
        ProductSubtitle(title: subtitle),
        5.heightBox,
        RatingwithTotalrates(rate: rate, totalrated: totalrated)
      ],
    ).centered().box.width(120).height(200).roundedSM.color(Vx.white).p4.make();
  }
}
