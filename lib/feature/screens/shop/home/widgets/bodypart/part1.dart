import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/common/card/banner/homebannercard.dart';
import 'package:evaly/feature/screens/shop/home/widgets/homebuttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Part1 extends StatelessWidget {
  const Part1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeFiveButton(),
        const HomeBannerCard(),
        10.heightBox,
        const HomePageCardLinearGradiant(
          title: 'Deals of The Day',
          subtitle: 'Best of Prices,Top Products',
          lineracolor: [ColorConstant.sky, ColorConstant.parrot],
        ),
        10.heightBox,
        const HomePageCard(
          title: 'Trending Now',
          subtitle: 'Best Selling Products',
          color: Vx.red100,
        ),
        10.heightBox,
        const HomePageCard(
          applyrating: true,
          title: 'Popular Products',
          subtitle: 'Products You May Like',
          color: Vx.purple100,
        ),
      ],
    );
  }
}