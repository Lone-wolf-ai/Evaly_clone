import 'package:evaly/common/button/showbutton.dart';
import 'package:evaly/common/card/productcard.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageCardLinearGradiant extends StatelessWidget {
  const HomePageCardLinearGradiant({
    super.key,
    required this.title,
    required this.subtitle,
    this.lineracolor,
  });

  final String title;
  final String subtitle;
  final List<Color>? lineracolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.text.white.bold.size(18).make(),
                subtitle.text.white.fontWeight(FontWeight.w400).make(),
              ],
            ),
            ShowAllButton(
              ontap: () => onTap,
            )
          ],
        ),
        ListView.separated(
                shrinkWrap: true,
                cacheExtent: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ProductCard(
                    title: 'hello',
                    subtitle: 'bye',
                    amount: '20',
                    reduced: true,
                    newprice: '1000',
                    price: '1700',
                    imgurl: ImageCons.watch1,
                    isnetworkimg: false),
                separatorBuilder: (_, __) => 10.widthBox,
                itemCount: 10)
            .box
            .height(240)
            .make()
      ],
    )
        .box
        .linearGradient(lineracolor!,
            begin: Alignment.topLeft, end: Alignment.bottomRight)
        .padding(const EdgeInsets.only(left: 10, right: 10, top: 10))
        .rounded
        .make();
  }
}