import 'package:evaly/common/card/widget/producttag.dart';
import 'package:evaly/common/image/roundedimg.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';

class ProductimgWithTag extends StatelessWidget {
  const ProductimgWithTag({
    super.key,
    this.isnetworkimg = false,
    this.imgurl = ImageCons.watch1,
    this.tag = true,
    this.itemsold = '10',
  });
  final bool isnetworkimg;
  final String imgurl;
  final bool tag;
  final String itemsold;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Stack(
              children: [
                RoundedImg(
                  isnetworkimg: isnetworkimg,
                  imgurl: imgurl,
                  height: 180,
                  width: 160,
                ),
                if (tag)
                  Positioned(
                      right: BorderSide.strokeAlignInside,
                      child: ProductTag(
                        tag: '$itemsold sold',
                      ))
              ],
            )
          ],
        )
      ],
    );
  }
}