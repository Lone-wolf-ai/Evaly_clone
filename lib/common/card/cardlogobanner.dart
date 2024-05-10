import 'package:evaly/common/card/cardwithattributes.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/common/image/bannerimg.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class CardLogoBaner extends StatelessWidget {
  const CardLogoBaner({
    super.key,
    this.companylog = ImageCons.watch1,
    this.banner = ImageCons.banner1,
    required this.title,
    this.ratings = 5,
    this.totalrated = "20",
    this.isnetworkimg = false,
  });
  final String companylog;
  final String banner;
  final String title;
  final double ratings;
  final String totalrated;
  final bool isnetworkimg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            TopLeftRightroundedimg(
              banner: banner,
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Row(
                children: [
                  CardWithAttribute(
                    imgurl: companylog,
                    isnetworkimg: isnetworkimg,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 100,
              top: 150,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Stack(
                        children: [
                          Icon(
                            Icons.shield,
                            size: 13,
                            color: Vx.blue600,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Icon(
                              Icons.check,
                              size: 10,
                              color: Vx.white,
                            ),
                          ),
                        ],
                      ).paddingOnly(left: 4, top: 5),
                      3.widthBox,
                      Flexible(
                        child: Row(
                          children: [
                            Expanded(
                                child: title.text.semiBold.size(15).make()),
                          ],
                        ),
                      ),
                    ],
                  ),
                  RatingwithTotalrates(rate: ratings, totalrated: totalrated)
                      .paddingOnly(left: 4)
                ],
              ).box.width(300).white.make(),
            ),
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          size: 10,
                        ),
                        4.widthBox,
                        "Pallabi,Dhaka".text.gray800.sm.make()
                      ],
                    ),
                    3.heightBox,
                    Row(
                      children: [
                        const Icon(
                          Iconsax.truck_time,
                          size: 10,
                        ),
                        4.widthBox,
                        Row(
                          children: [
                            "Delivery in".text.gray800.sm.make(),
                            " 1 to 4 Days".text.bold.gray700.sm.make(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).box.white.make(),
              ),
            )
          ],
        ).box.height(260).white.roundedSM.make(),
      ],
    );
  }
}