import 'package:evaly/common/button/showbutton.dart';
import 'package:evaly/common/card/homepagecard.dart';
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
        10.heightBox,
        const ProductCardList(
          autoscroll: false,
        )
      ],
    )
        .box
        .linearGradient(lineracolor!,
            begin: Alignment.topLeft, end: Alignment.bottomRight)
        .padding(
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10))
        .rounded
        .make();
  }
}
