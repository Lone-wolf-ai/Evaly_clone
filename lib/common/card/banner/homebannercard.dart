import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/image/bannerimg.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeBannerCard extends StatelessWidget {
  const HomeBannerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopLeftRightroundedimg(banner: ImageCons.banner1),
        Column(
          children: [
            HomeBannerRow(
              title: 'Product',
              ontap: () {},
            ),
            const ProductCardList(autoscroll: false),
            HomeBannerRow(
              title: 'Shops',
              ontap: () {},
            ),
            const ProductCardList(autoscroll: false),
          ],
        ).box.padding(const EdgeInsets.symmetric(horizontal: 10)).make(),
      ],
    ).box.black.rounded.padding(const EdgeInsets.only(bottom: 10)).make();
  }
}

class HomeBannerRow extends StatelessWidget {
  const HomeBannerRow({
    super.key,
    required this.title,
    required this.ontap,
  });
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.semiBold.white.make(),
        "Show All".text.white.make().onTap(() => ontap)
      ],
    ).box.padding(const EdgeInsets.symmetric(vertical: 10)).make();
  }
}

