import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ImgWithTitle extends StatelessWidget {
  const ImgWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage(ImageCons.watch1),
          width: 80,
          height: 80,
          fit: BoxFit.contain,
        ).box.gray100.roundedSM.make(),
        Expanded(child: "Title".text.maxLines(2).center.make()),
      ],
    );
  }
}