import 'package:evaly/common/card/widget/productsubtitle.dart';
import 'package:evaly/common/card/widget/producttitlewithverifiacation.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/common/card/widget/shoptitlewithverification.dart';
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
              ).box.color(Vx.white).height(100).width(100).roundedSM.make(),
        if (title != '')
          ShoptitlewithVerification(
            title: title,
            isverified: isverified,
            isSemibold: false,
          ),
       if(subtitle!='') ProductSubtitle(title: subtitle),
       if(subtitle!='') 5.heightBox,
       if(subtitle=='')Spacer(),
        RatingwithTotalrates(rate: rate, totalrated: totalrated,itemsize: 12,)
      ],
    ).centered().box.width(110).roundedSM.color(Vx.white).p4.make();
  }
}
