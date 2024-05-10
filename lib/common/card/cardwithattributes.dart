import 'package:evaly/common/icon/codicon.dart';
import 'package:evaly/common/image/roundedimg.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardWithAttribute extends StatelessWidget {
  const CardWithAttribute({
    super.key,
    this.imgurl = ImageCons.watch1,
    this.isnetworkimg = false,
  });
  final String imgurl;
  final bool isnetworkimg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedImg(
          isnetworkimg: isnetworkimg,
          imgurl: imgurl,
          height: 60,
          width: 60,
        ),
        5.heightBox,
        const CODIcon()
      ],
    ).box.white.roundedSM.p4.make();
  }
}
